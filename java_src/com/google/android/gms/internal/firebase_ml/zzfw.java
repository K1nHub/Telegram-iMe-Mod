package com.google.android.gms.internal.firebase_ml;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzfw extends zzey {
    private Object data;

    public zzfw(Object obj) {
        super(zzfz.MEDIA_TYPE);
        this.data = zzkv.checkNotNull(obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzic
    public final void writeTo(OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, zzen()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : zzhj.zzf(this.data).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String zzao = zzii.zzao(entry.getKey());
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : zzie.zzi(value)) {
                        z = zza(z, bufferedWriter, zzao, obj);
                    }
                } else {
                    z = zza(z, bufferedWriter, zzao, value);
                }
            }
        }
        bufferedWriter.flush();
    }

    private static boolean zza(boolean z, Writer writer, String str, Object obj) throws IOException {
        if (obj != null && !zzhj.isNull(obj)) {
            if (z) {
                z = false;
            } else {
                writer.write("&");
            }
            writer.write(str);
            String zzao = zzii.zzao(obj instanceof Enum ? zzhp.zza((Enum) obj).getName() : obj.toString());
            if (zzao.length() != 0) {
                writer.write("=");
                writer.write(zzao);
            }
        }
        return z;
    }
}
