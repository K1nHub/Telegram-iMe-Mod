package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzbi extends zzaw {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzbi() {
        this.zza.add(zzbl.ADD);
        this.zza.add(zzbl.DIVIDE);
        this.zza.add(zzbl.MODULUS);
        this.zza.add(zzbl.MULTIPLY);
        this.zza.add(zzbl.NEGATE);
        this.zza.add(zzbl.POST_DECREMENT);
        this.zza.add(zzbl.POST_INCREMENT);
        this.zza.add(zzbl.PRE_DECREMENT);
        this.zza.add(zzbl.PRE_INCREMENT);
        this.zza.add(zzbl.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 0) {
            zzh.zzh(zzblVar.name(), 2, list);
            zzap zzb = zzgVar.zzb(list.get(0));
            zzap zzb2 = zzgVar.zzb(list.get(1));
            if ((zzb instanceof zzal) || (zzb instanceof zzat) || (zzb2 instanceof zzal) || (zzb2 instanceof zzat)) {
                String valueOf = String.valueOf(zzb.zzi());
                String valueOf2 = String.valueOf(zzb2.zzi());
                return new zzat(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            }
            return new zzah(Double.valueOf(zzb.zzh().doubleValue() + zzb2.zzh().doubleValue()));
        } else if (ordinal == 21) {
            zzh.zzh(zzbl.DIVIDE.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.zzb(list.get(0)).zzh().doubleValue() / zzgVar.zzb(list.get(1)).zzh().doubleValue()));
        } else if (ordinal == 59) {
            zzh.zzh(zzbl.SUBTRACT.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.zzb(list.get(0)).zzh().doubleValue() + new zzah(Double.valueOf(-zzgVar.zzb(list.get(1)).zzh().doubleValue())).zzh().doubleValue()));
        } else if (ordinal == 52 || ordinal == 53) {
            zzh.zzh(str, 2, list);
            zzap zzb3 = zzgVar.zzb(list.get(0));
            zzgVar.zzb(list.get(1));
            return zzb3;
        } else if (ordinal != 55 && ordinal != 56) {
            switch (ordinal) {
                case 44:
                    zzh.zzh(zzbl.MODULUS.name(), 2, list);
                    return new zzah(Double.valueOf(zzgVar.zzb(list.get(0)).zzh().doubleValue() % zzgVar.zzb(list.get(1)).zzh().doubleValue()));
                case 45:
                    zzh.zzh(zzbl.MULTIPLY.name(), 2, list);
                    return new zzah(Double.valueOf(zzgVar.zzb(list.get(0)).zzh().doubleValue() * zzgVar.zzb(list.get(1)).zzh().doubleValue()));
                case 46:
                    zzh.zzh(zzbl.NEGATE.name(), 1, list);
                    return new zzah(Double.valueOf(-zzgVar.zzb(list.get(0)).zzh().doubleValue()));
                default:
                    return super.zzb(str);
            }
        } else {
            zzh.zzh(str, 1, list);
            return zzgVar.zzb(list.get(0));
        }
    }
}
