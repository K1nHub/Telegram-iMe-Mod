package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public class zzem extends zzgg {
    @zzhs
    private int code;
    @zzhs
    private List<zza> errors;
    @zzhs
    private String message;

    /* loaded from: classes.dex */
    public static class zza extends zzgg {
        @zzhs
        private String domain;
        @zzhs
        private String location;
        @zzhs
        private String locationType;
        @zzhs
        private String message;
        @zzhs
        private String reason;

        public final String getReason() {
            return this.reason;
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzgg
        public final /* synthetic */ zzgg zza(String str, Object obj) {
            return (zza) zzb(str, obj);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzgg
        public final /* synthetic */ zzgg zzdz() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
        public final /* synthetic */ zzho zzea() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
        public final /* synthetic */ zzho zzb(String str, Object obj) {
            return (zza) super.zzb(str, obj);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return (zza) super.clone();
        }
    }

    public final List<zza> zzdy() {
        return this.errors;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzem) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzem) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzem) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzem) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzem) super.clone();
    }

    static {
        zzhj.zzd(zza.class);
    }
}
