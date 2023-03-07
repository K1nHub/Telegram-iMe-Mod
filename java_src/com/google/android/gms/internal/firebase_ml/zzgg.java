package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzgg extends zzho {
    private zzgj zzvw;

    public final void zza(zzgj zzgjVar) {
        this.zzvw = zzgjVar;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        zzgj zzgjVar = this.zzvw;
        if (zzgjVar != null) {
            try {
                return zzgjVar.toString(this);
            } catch (IOException e) {
                throw zzlc.zza(e);
            }
        }
        return super.toString();
    }

    public final String zzfp() throws IOException {
        zzgj zzgjVar = this.zzvw;
        if (zzgjVar != null) {
            return zzgjVar.zzd(this);
        }
        return super.toString();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    /* renamed from: zzdz */
    public zzgg clone() {
        return (zzgg) super.clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    /* renamed from: zza */
    public zzgg zzb(String str, Object obj) {
        return (zzgg) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    public /* synthetic */ zzho zzea() {
        return (zzgg) clone();
    }
}
