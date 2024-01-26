package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public class zzvn {
    private static final zzuj zzbok = zzuj.zzqs();
    private zztn zzbuj;
    private volatile zzwe zzbuk;
    private volatile zztn zzbul;

    public int hashCode() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzvn) {
            zzvn zzvnVar = (zzvn) obj;
            zzwe zzweVar = this.zzbuk;
            zzwe zzweVar2 = zzvnVar.zzbuk;
            if (zzweVar == null && zzweVar2 == null) {
                return zzpx().equals(zzvnVar.zzpx());
            }
            if (zzweVar == null || zzweVar2 == null) {
                if (zzweVar != null) {
                    return zzweVar.equals(zzvnVar.zzh(zzweVar.zzrk()));
                }
                return zzh(zzweVar2.zzrk()).equals(zzweVar2);
            }
            return zzweVar.equals(zzweVar2);
        }
        return false;
    }

    private final zzwe zzh(zzwe zzweVar) {
        if (this.zzbuk == null) {
            synchronized (this) {
                if (this.zzbuk == null) {
                    try {
                        this.zzbuk = zzweVar;
                        this.zzbul = zztn.zzbos;
                    } catch (zzve unused) {
                        this.zzbuk = zzweVar;
                        this.zzbul = zztn.zzbos;
                    }
                }
            }
        }
        return this.zzbuk;
    }

    public final zzwe zzi(zzwe zzweVar) {
        zzwe zzweVar2 = this.zzbuk;
        this.zzbuj = null;
        this.zzbul = null;
        this.zzbuk = zzweVar;
        return zzweVar2;
    }

    public final int zzre() {
        if (this.zzbul != null) {
            return this.zzbul.size();
        }
        if (this.zzbuk != null) {
            return this.zzbuk.zzre();
        }
        return 0;
    }

    public final zztn zzpx() {
        if (this.zzbul != null) {
            return this.zzbul;
        }
        synchronized (this) {
            if (this.zzbul != null) {
                return this.zzbul;
            }
            if (this.zzbuk == null) {
                this.zzbul = zztn.zzbos;
            } else {
                this.zzbul = this.zzbuk.zzpx();
            }
            return this.zzbul;
        }
    }
}
