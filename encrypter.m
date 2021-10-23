function [encryptedMessage] = encrypter(message, k, n)

encryptedMessage = modAr(message, k, n);

end

