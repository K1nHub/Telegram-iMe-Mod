package com.google.android.gms.internal.mlkit_common;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
final class zzbi implements zzbn {
    private final int zza;
    private final zzbm zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(int i, zzbm zzbmVar) {
        this.zza = i;
        this.zzb = zzbmVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzbn.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbn) {
            zzbn zzbnVar = (zzbn) obj;
            return this.zza == zzbnVar.zza() && this.zzb.equals(zzbnVar.zzb());
        }
        return false;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.zza ^ 14552422) + (this.zzb.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.zza + "intEncoding=" + this.zzb + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbn
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbn
    public final zzbm zzb() {
        return this.zzb;
    }
}
