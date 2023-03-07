package com.google.android.gms.internal.firebase_ml;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;
/* loaded from: classes.dex */
public final class zzfp {
    private final int statusCode;
    private final zzfl zztf;
    private int zztw;
    private boolean zztx;
    private final String zzuq;
    private InputStream zzur;
    private final String zzus;
    private final String zzut;
    private zzfv zzuu;
    private final zzfk zzuv;
    private boolean zzuw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfp(zzfk zzfkVar, zzfv zzfvVar) throws IOException {
        StringBuilder sb;
        this.zzuv = zzfkVar;
        this.zztw = zzfkVar.zzet();
        this.zztx = zzfkVar.zzeu();
        this.zzuu = zzfvVar;
        this.zzus = zzfvVar.getContentEncoding();
        int statusCode = zzfvVar.getStatusCode();
        boolean z = false;
        statusCode = statusCode < 0 ? 0 : statusCode;
        this.statusCode = statusCode;
        String reasonPhrase = zzfvVar.getReasonPhrase();
        this.zzuq = reasonPhrase;
        Logger logger = zzft.zzuz;
        if (this.zztx && logger.isLoggable(Level.CONFIG)) {
            z = true;
        }
        if (z) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------");
            String str = zzib.zzzx;
            sb.append(str);
            String zzfh = zzfvVar.zzfh();
            if (zzfh != null) {
                sb.append(zzfh);
            } else {
                sb.append(statusCode);
                if (reasonPhrase != null) {
                    sb.append(' ');
                    sb.append(reasonPhrase);
                }
            }
            sb.append(str);
        } else {
            sb = null;
        }
        zzfkVar.zzew().zza(zzfvVar, z ? sb : null);
        String contentType = zzfvVar.getContentType();
        contentType = contentType == null ? zzfkVar.zzew().getContentType() : contentType;
        this.zzut = contentType;
        this.zztf = contentType != null ? new zzfl(contentType) : null;
        if (z) {
            logger.logp(Level.CONFIG, "com.google.api.client.http.HttpResponse", "<init>", sb.toString());
        }
    }

    public final String getContentType() {
        return this.zzut;
    }

    public final zzfj zzev() {
        return this.zzuv.zzew();
    }

    public final boolean zzfc() {
        int i = this.statusCode;
        return i >= 200 && i < 300;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.zzuq;
    }

    public final InputStream getContent() throws IOException {
        if (!this.zzuw) {
            InputStream content = this.zzuu.getContent();
            if (content != null) {
                try {
                    String str = this.zzus;
                    if (str != null && str.contains("gzip")) {
                        content = new GZIPInputStream(content);
                    }
                    Logger logger = zzft.zzuz;
                    if (this.zztx) {
                        Level level = Level.CONFIG;
                        if (logger.isLoggable(level)) {
                            content = new zzhu(content, logger, level, this.zztw);
                        }
                    }
                    this.zzur = content;
                } catch (EOFException unused) {
                    content.close();
                } catch (Throwable th) {
                    content.close();
                    throw th;
                }
            }
            this.zzuw = true;
        }
        return this.zzur;
    }

    public final void ignore() throws IOException {
        InputStream content = getContent();
        if (content != null) {
            content.close();
        }
    }

    public final void disconnect() throws IOException {
        ignore();
        this.zzuu.disconnect();
    }

    public final <T> T zza(Class<T> cls) throws IOException {
        int i = this.statusCode;
        boolean z = true;
        if (this.zzuv.getRequestMethod().equals("HEAD") || i / 100 == 1 || i == 204 || i == 304) {
            ignore();
            z = false;
        }
        if (z) {
            return (T) this.zzuv.zzey().zza(getContent(), zzfe(), cls);
        }
        return null;
    }

    public final String zzfd() throws IOException {
        InputStream content = getContent();
        if (content == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            zzkv.checkNotNull(content);
            zzkv.checkNotNull(byteArrayOutputStream);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = content.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    content.close();
                    return byteArrayOutputStream.toString(zzfe().name());
                }
            }
        } catch (Throwable th) {
            content.close();
            throw th;
        }
    }

    private final Charset zzfe() {
        zzfl zzflVar = this.zztf;
        return (zzflVar == null || zzflVar.zzfb() == null) ? zzhe.ISO_8859_1 : this.zztf.zzfb();
    }
}
