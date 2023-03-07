package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.google.android.gms.internal.firebase_ml.zzuu;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class zzuj {
    private static volatile boolean zzbpl = false;
    private static volatile zzuj zzbpn;
    private final Map<zza, zzuu.zzf<?, ?>> zzbpp;
    private static final Class<?> zzbpm = zzqr();
    static final zzuj zzbpo = new zzuj(true);

    private static Class<?> zzqr() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * RtpPacket.MAX_SEQUENCE_NUMBER) + this.number;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                return this.object == zzaVar.object && this.number == zzaVar.number;
            }
            return false;
        }
    }

    public static zzuj zzqs() {
        zzuj zzujVar = zzbpn;
        if (zzujVar == null) {
            synchronized (zzuj.class) {
                zzujVar = zzbpn;
                if (zzujVar == null) {
                    zzujVar = zzuh.zzqq();
                    zzbpn = zzujVar;
                }
            }
        }
        return zzujVar;
    }

    public final <ContainingType extends zzwe> zzuu.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzuu.zzf<ContainingType, ?>) this.zzbpp.get(new zza(containingtype, i));
    }

    zzuj() {
        this.zzbpp = new HashMap();
    }

    private zzuj(boolean z) {
        this.zzbpp = Collections.emptyMap();
    }
}
