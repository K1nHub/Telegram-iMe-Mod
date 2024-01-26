package com.google.android.gms.internal.icing;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.zip.CRC32;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "UsageInfoCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();
    @SafeParcelable.Field(m1090id = 1)
    final zzi zza;
    @SafeParcelable.Field(m1090id = 2)
    final long zzb;
    @SafeParcelable.Field(m1090id = 3)
    int zzc;
    @SafeParcelable.Field(m1090id = 4)
    public final String zzd;
    @SafeParcelable.Field(m1090id = 5)
    final zzg zze;
    @SafeParcelable.Field(defaultValue = "false", m1090id = 6)
    final boolean zzf;
    @SafeParcelable.Field(defaultValue = "-1", m1090id = 7)
    int zzg;
    @SafeParcelable.Field(m1090id = 8)
    int zzh;
    @SafeParcelable.Field(m1090id = 9)
    public final String zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzx(@SafeParcelable.Param(m1089id = 1) zzi zziVar, @SafeParcelable.Param(m1089id = 2) long j, @SafeParcelable.Param(m1089id = 3) int i, @SafeParcelable.Param(m1089id = 4) String str, @SafeParcelable.Param(m1089id = 5) zzg zzgVar, @SafeParcelable.Param(m1089id = 6) boolean z, @SafeParcelable.Param(m1089id = 7) int i2, @SafeParcelable.Param(m1089id = 8) int i3, @SafeParcelable.Param(m1089id = 9) String str2) {
        this.zza = zziVar;
        this.zzb = j;
        this.zzc = i;
        this.zzd = str;
        this.zze = zzgVar;
        this.zzf = z;
        this.zzg = i2;
        this.zzh = i3;
        this.zzi = str2;
    }

    public static zzi zza(String str, Intent intent) {
        return zzc(str, zze(intent));
    }

    @VisibleForTesting
    public static zzf zzb(Intent intent, String str, Uri uri, String str2, List<AppIndexApi.AppIndexingLink> list) {
        String string;
        zzf zzfVar = new zzf();
        if (str != null) {
            zzr zzrVar = new zzr("title");
            zzrVar.zzc(true);
            zzrVar.zzd(AppMeasurementSdk.ConditionalUserProperty.NAME);
            zzfVar.zza(new zzk(str, zzrVar.zze(), zzq.zzb("text1"), null));
        }
        if (uri != null) {
            String uri2 = uri.toString();
            zzr zzrVar2 = new zzr("web_url");
            zzrVar2.zzb(true);
            zzrVar2.zzd(ImagesContract.URL);
            zzfVar.zza(new zzk(uri2, zzrVar2.zze(), zzk.zza, null));
        }
        if (list != null) {
            zzan zza = zzaq.zza();
            int size = list.size();
            zzap[] zzapVarArr = new zzap[size];
            for (int i = 0; i < size; i++) {
                zzao zza2 = zzap.zza();
                AppIndexApi.AppIndexingLink appIndexingLink = list.get(i);
                zza2.zza(appIndexingLink.appIndexingUrl.toString());
                zza2.zzc(appIndexingLink.viewId);
                Uri uri3 = appIndexingLink.webUrl;
                if (uri3 != null) {
                    zza2.zzb(uri3.toString());
                }
                zzapVarArr[i] = zza2.zzj();
            }
            zza.zza(Arrays.asList(zzapVarArr));
            byte[] zzh = zza.zzj().zzh();
            zzr zzrVar3 = new zzr("outlinks");
            zzrVar3.zzb(true);
            zzrVar3.zzd(".private:outLinks");
            zzrVar3.zza("blob");
            zzfVar.zza(new zzk(null, zzrVar3.zze(), zzk.zza, zzh));
        }
        String action = intent.getAction();
        if (action != null) {
            zzfVar.zza(zzd("intent_action", action));
        }
        String dataString = intent.getDataString();
        if (dataString != null) {
            zzfVar.zza(zzd("intent_data", dataString));
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            zzfVar.zza(zzd("intent_activity", component.getClassName()));
        }
        Bundle extras = intent.getExtras();
        if (extras != null && (string = extras.getString("intent_extra_data_key")) != null) {
            zzfVar.zza(zzd("intent_extra_data", string));
        }
        if (str2 != null) {
            zzfVar.zzb(str2);
        }
        zzfVar.zzc(true);
        return zzfVar;
    }

    private static zzi zzc(String str, String str2) {
        return new zzi(str, "", str2);
    }

    private static zzk zzd(String str, String str2) {
        zzr zzrVar = new zzr(str);
        zzrVar.zzb(true);
        return new zzk(str2, zzrVar.zze(), zzq.zzb(str), null);
    }

    private static String zze(Intent intent) {
        String uri = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try {
            crc32.update(uri.getBytes("UTF-8"));
            return Long.toHexString(crc32.getValue());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    public final String toString() {
        return String.format(Locale.US, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.zza, Long.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzh));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zza, i, false);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.writeInt(parcel, 8, this.zzh);
        SafeParcelWriter.writeString(parcel, 9, this.zzi, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @VisibleForTesting
    public zzx(String str, Intent intent, String str2, Uri uri, String str3, List<AppIndexApi.AppIndexingLink> list, int i) {
        this(zzc(str, zze(intent)), System.currentTimeMillis(), 0, null, zzb(intent, str2, uri, null, list).zze(), false, -1, 1, null);
    }
}
