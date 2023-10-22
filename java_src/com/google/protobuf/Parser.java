package com.google.protobuf;
/* loaded from: classes3.dex */
public interface Parser<MessageType> {
    MessageType parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;

    MessageType parseFrom(byte[] bArr) throws InvalidProtocolBufferException;

    MessageType parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;
}
