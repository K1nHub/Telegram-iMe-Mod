package net.lingala.zip4j.p035io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.unzip.UnzipEngine;
/* renamed from: net.lingala.zip4j.io.BaseInputStream */
/* loaded from: classes6.dex */
public abstract class BaseInputStream extends InputStream {
    @Override // java.io.InputStream
    public abstract int available() throws IOException;

    public abstract UnzipEngine getUnzipEngine();

    @Override // java.io.InputStream
    public abstract int read() throws IOException;
}
