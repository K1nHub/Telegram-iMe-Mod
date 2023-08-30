package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class zzhw implements zzic {
    private final Logger logger;
    private final zzic zztm;
    private final int zztw;
    private final Level zzzu;

    public zzhw(zzic zzicVar, Logger logger, Level level, int i) {
        this.zztm = zzicVar;
        this.logger = logger;
        this.zzzu = level;
        this.zztw = i;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzic
    public final void writeTo(OutputStream outputStream) throws IOException {
        zzht zzhtVar = new zzht(outputStream, this.logger, this.zzzu, this.zztw);
        try {
            this.zztm.writeTo(zzhtVar);
            zzhtVar.zzhb().close();
            outputStream.flush();
        } catch (Throwable th) {
            zzhtVar.zzhb().close();
            throw th;
        }
    }
}
