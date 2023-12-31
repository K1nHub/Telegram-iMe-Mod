package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zzih;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzig<MessageType extends zzih<MessageType, BuilderType>, BuilderType extends zzig<MessageType, BuilderType>> implements zzlf {
    @Override // 
    /* renamed from: zzaq */
    public abstract BuilderType clone();

    protected abstract BuilderType zzar(MessageType messagetype);

    public BuilderType zzas(byte[] bArr, int i, int i2) throws zzkj {
        throw null;
    }

    public BuilderType zzat(byte[] bArr, int i, int i2, zzjl zzjlVar) throws zzkj {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlf
    public final /* bridge */ /* synthetic */ zzlf zzau(zzlg zzlgVar) {
        if (!zzbL().getClass().isInstance(zzlgVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zzar((zzih) zzlgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final /* bridge */ /* synthetic */ zzlf zzav(byte[] bArr) throws zzkj {
        return zzas(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final /* bridge */ /* synthetic */ zzlf zzaw(byte[] bArr, zzjl zzjlVar) throws zzkj {
        return zzat(bArr, 0, bArr.length, zzjlVar);
    }
}
