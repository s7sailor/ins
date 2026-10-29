import hmac
import hashlib


def generate_hmac(key, message):
    hmac_object = hmac.new(key.encode(), message.encode(), hashlib.sha256)
    return hmac_object.hexdigest()


key = "secret_key"
message = "This is a message"
hmac_code = generate_hmac(key, message)
print(f"HMAC: {hmac_code}")
