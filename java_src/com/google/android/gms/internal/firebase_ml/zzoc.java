package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.util.Set;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzoc implements Callable<Void> {
    private final /* synthetic */ zzoa zzatt;
    private final zznx zzaua;
    private final String zzaub;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzoc(zzoa zzoaVar, zznx zznxVar, String str) {
        this.zzatt = zzoaVar;
        this.zzaua = zznxVar;
        this.zzaub = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzlu */
    public final Void call() {
        GmsLogger gmsLogger;
        Set set;
        GmsLogger gmsLogger2;
        String str = this.zzaub;
        str.hashCode();
        if (str.equals("OPERATION_RELEASE")) {
            zznx zznxVar = this.zzaua;
            gmsLogger = zzoa.zzasz;
            gmsLogger.m1094v("ModelResourceManager", "Releasing modelResource");
            zznxVar.release();
            set = this.zzatt.zzatx;
            set.remove(zznxVar);
            return null;
        } else if (str.equals("OPERATION_LOAD")) {
            try {
                this.zzatt.zzf(this.zzaua);
                return null;
            } catch (FirebaseMLException e) {
                gmsLogger2 = zzoa.zzasz;
                gmsLogger2.m1097e("ModelResourceManager", "Error preloading model resource", e);
                return null;
            }
        } else {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzoc) {
            zzoc zzocVar = (zzoc) obj;
            return Objects.equal(this.zzaua, zzocVar.zzaua) && Objects.equal(this.zzaub, zzocVar.zzaub);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzaua, this.zzaub);
    }
}
