import hashlib


def calculate_sha1(message):
    sha1_object = hashlib.sha1()
    sha1_object.update(message.encode())
    return sha1_object.hexdigest()


message = "This is a message"
sha1_hash = calculate_sha1(message)
print(f"SHA-1 Hash: {sha1_hash}")
