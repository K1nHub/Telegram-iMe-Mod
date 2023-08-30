package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zztf;
import com.google.android.gms.internal.firebase_ml.zztg;
/* loaded from: classes.dex */
public abstract class zztf<MessageType extends zztg<MessageType, BuilderType>, BuilderType extends zztf<MessageType, BuilderType>> implements zzwh {
    protected abstract BuilderType zza(MessageType messagetype);

    @Override // 
    /* renamed from: zzpw */
    public abstract BuilderType clone();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_ml.zzwh
    public final /* synthetic */ zzwh zza(zzwe zzweVar) {
        if (!zzrk().getClass().isInstance(zzweVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zza((zztf<MessageType, BuilderType>) ((zztg) zzweVar));
    }
}
