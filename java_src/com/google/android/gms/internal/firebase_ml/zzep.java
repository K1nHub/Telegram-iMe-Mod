package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public class zzep {
    private static final Logger logger = Logger.getLogger(zzep.class.getName());
    private final zzev zzsf;
    private final zzhy zzsh;
    private final String zzsi;
    private final String zzsj;
    private final String zzsk;
    private final String zzsl;
    private final zzfn zzsm;
    private final boolean zzsn;
    private final boolean zzso;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzep(zza zzaVar) {
        zzfn zza2;
        this.zzsf = zzaVar.zzsf;
        this.zzsi = zzj(zzaVar.zzsi);
        this.zzsj = zzk(zzaVar.zzsj);
        this.zzsk = zzaVar.zzsk;
        if (zzld.zzay(zzaVar.zzsl)) {
            logger.logp(Level.WARNING, "com.google.api.client.googleapis.services.AbstractGoogleClient", "<init>", "Application name is not set. Call Builder#setApplicationName.");
        }
        this.zzsl = zzaVar.zzsl;
        zzfm zzfmVar = zzaVar.zzsg;
        if (zzfmVar == null) {
            zza2 = zzaVar.zzse.zza(null);
        } else {
            zza2 = zzaVar.zzse.zza(zzfmVar);
        }
        this.zzsm = zza2;
        this.zzsh = zzaVar.zzsh;
        this.zzsn = false;
        this.zzso = false;
    }

    /* loaded from: classes.dex */
    public static abstract class zza {
        final zzft zzse;
        zzev zzsf;
        zzfm zzsg;
        final zzhy zzsh;
        String zzsi;
        String zzsj;
        String zzsk;
        String zzsl;

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(zzft zzftVar, String str, String str2, zzhy zzhyVar, zzfm zzfmVar) {
            this.zzse = (zzft) zzkv.checkNotNull(zzftVar);
            this.zzsh = zzhyVar;
            zzf(str);
            zzg(str2);
            this.zzsg = zzfmVar;
        }

        public zza zzf(String str) {
            this.zzsi = zzep.zzj(str);
            return this;
        }

        public zza zzg(String str) {
            this.zzsj = zzep.zzk(str);
            return this;
        }

        public zza zzh(String str) {
            this.zzsk = str;
            return this;
        }

        public zza zza(zzev zzevVar) {
            this.zzsf = zzevVar;
            return this;
        }

        public zza zzi(String str) {
            this.zzsl = str;
            return this;
        }
    }

    public final String zzec() {
        String valueOf = String.valueOf(this.zzsi);
        String valueOf2 = String.valueOf(this.zzsj);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final String zzed() {
        return this.zzsl;
    }

    public final zzfn zzee() {
        return this.zzsm;
    }

    public zzhy zzef() {
        return this.zzsh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zzer<?> zzerVar) throws IOException {
        zzev zzevVar = this.zzsf;
        if (zzevVar != null) {
            zzevVar.zza(zzerVar);
        }
    }

    static String zzj(String str) {
        zzkv.checkNotNull(str, "root URL cannot be null.");
        return !str.endsWith("/") ? str.concat("/") : str;
    }

    static String zzk(String str) {
        zzkv.checkNotNull(str, "service path cannot be null");
        if (str.length() == 1) {
            zzkv.checkArgument("/".equals(str), "service path must equal \"/\" if it is of length 1.");
            return "";
        } else if (str.length() > 0) {
            if (!str.endsWith("/")) {
                str = str.concat("/");
            }
            return str.startsWith("/") ? str.substring(1) : str;
        } else {
            return str;
        }
    }
}
