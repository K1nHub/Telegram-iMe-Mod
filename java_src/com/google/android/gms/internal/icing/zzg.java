package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.BitSet;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "DocumentContentsCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    @SafeParcelable.Field(m1090id = 1)
    final zzk[] zza;
    @SafeParcelable.Field(m1090id = 2)
    public final String zzb;
    @SafeParcelable.Field(m1090id = 3)
    public final boolean zzc;
    @SafeParcelable.Field(m1090id = 4)
    public final Account zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(String str, boolean z, Account account, zzk... zzkVarArr) {
        this(zzkVarArr, str, z, account);
        if (zzkVarArr != null) {
            int length = zzq.zza.length;
            BitSet bitSet = new BitSet(10);
            for (zzk zzkVar : zzkVarArr) {
                int i = zzkVar.zzd;
                if (i != -1) {
                    if (!bitSet.get(i)) {
                        bitSet.set(i);
                    } else {
                        String valueOf = String.valueOf(zzq.zza(i));
                        throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate global search section type ".concat(valueOf) : new String("Duplicate global search section type "));
                    }
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzg) {
            zzg zzgVar = (zzg) obj;
            if (Objects.equal(this.zzb, zzgVar.zzb) && Objects.equal(Boolean.valueOf(this.zzc), Boolean.valueOf(zzgVar.zzc)) && Objects.equal(this.zzd, zzgVar.zzd) && Arrays.equals(this.zza, zzgVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb, Boolean.valueOf(this.zzc), this.zzd, Integer.valueOf(Arrays.hashCode(this.zza)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 1, this.zza, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzg(@SafeParcelable.Param(m1089id = 1) zzk[] zzkVarArr, @SafeParcelable.Param(m1089id = 2) String str, @SafeParcelable.Param(m1089id = 3) boolean z, @SafeParcelable.Param(m1089id = 4) Account account) {
        this.zza = zzkVarArr;
        this.zzb = str;
        this.zzc = z;
        this.zzd = account;
    }
}
