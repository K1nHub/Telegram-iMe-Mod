package com.google.protobuf;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public abstract class ByteOutput {
    public abstract void writeLazy(ByteBuffer byteBuffer) throws IOException;

    public abstract void writeLazy(byte[] bArr, int i, int i2) throws IOException;
}
