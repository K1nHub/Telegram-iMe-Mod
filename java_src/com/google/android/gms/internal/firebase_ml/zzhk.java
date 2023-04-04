package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhk implements Iterator<Map.Entry<String, Object>>, p035j$.util.Iterator {
    private int zzyw = -1;
    private zzhp zzyx;
    private Object zzyy;
    private boolean zzyz;
    private boolean zzza;
    private zzhp zzzb;
    private final /* synthetic */ zzhi zzzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhk(zzhi zzhiVar) {
        this.zzzc = zzhiVar;
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        if (!this.zzza) {
            this.zzza = true;
            this.zzyy = null;
            while (this.zzyy == null) {
                int i = this.zzyw + 1;
                this.zzyw = i;
                if (i >= this.zzzc.zztq.zzyi.size()) {
                    break;
                }
                zzhh zzhhVar = this.zzzc.zztq;
                zzhp zzal = zzhhVar.zzal(zzhhVar.zzyi.get(this.zzyw));
                this.zzyx = zzal;
                this.zzyy = zzal.zzh(this.zzzc.object);
            }
        }
        return this.zzyy != null;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        zzkv.checkState((this.zzzb == null || this.zzyz) ? false : true);
        this.zzyz = true;
        this.zzzb.zzb(this.zzzc.object, null);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        zzhp zzhpVar = this.zzyx;
        this.zzzb = zzhpVar;
        Object obj = this.zzyy;
        this.zzza = false;
        this.zzyz = false;
        this.zzyx = null;
        this.zzyy = null;
        return new zzhl(this.zzzc, zzhpVar, obj);
    }
}
