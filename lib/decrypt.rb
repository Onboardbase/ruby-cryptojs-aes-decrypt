require 'digest/md5'
require 'base64'
require 'base64'
require 'digest'
require 'openssl'

module CryptojsAesDecrypt
  class Error < StandardError; end
  class << self
    def bytes_to_key(data, salt, output = 48)
      merged = data + salt
      key = Digest::MD5.digest(merged)
      final_key = key
      while final_key.length < output
        key = Digest::MD5.digest(key + merged)
        final_key += key
      end
      final_key[0..output - 1]
    end

    def aes256_cbc_decrypt(key, data, iv)
      # p key
      key = Digest::SHA256.digest(key) if key.is_a?(String) && key.bytesize != 32
      iv = Digest::MD5.digest(iv) if iv.is_a?(String) && iv.bytesize != 16
      aes = OpenSSL::Cipher.new('AES-256-CBC')
      aes.decrypt
      aes.key = key
      aes.iv = iv
      aes.update(data) + aes.final
    end

    def run(cipher, passcode)
      secret = Base64.decode64(cipher)
      unless secret[0..7] == 'Salted__'
        puts 'Invalid encrypted data'
        exit(1)
      end
      decrypt(secret, passcode)
    end

    def decrypt(secret, passcode)
      salt = secret[8..15]
      key_iv = bytes_to_key(passcode, salt, 48)
      key = key_iv[0..31]
      iv = key_iv[32..key_iv.length - 1]
      aes256_cbc_decrypt(key, secret[16..secret.length - 1], iv)
    end
  end
end
