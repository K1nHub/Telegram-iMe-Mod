package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@SafeParcelable.Class(creator = "SleepClassifyEventCreator")
/* loaded from: classes4.dex */
public class SleepClassifyEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepClassifyEvent> CREATOR = new zzaf();
    @SafeParcelable.Field(getter = "getTimestampSec", m797id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getConfidence", m797id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getMotion", m797id = 3)
    private final int zzc;
    @SafeParcelable.Field(getter = "getLight", m797id = 4)
    private final int zzd;
    @SafeParcelable.Field(getter = "getNoise", m797id = 5)
    private final int zze;
    @SafeParcelable.Field(getter = "getLightDiff", m797id = 6)
    private final int zzf;
    @SafeParcelable.Field(getter = "getNightOrDay", m797id = 7)
    private final int zzg;
    @SafeParcelable.Field(getter = "getConfidenceOverwrittenByAlarmClockTrigger", m797id = 8)
    private final boolean zzh;
    @SafeParcelable.Field(getter = "getPresenceConfidence", m797id = 9)
    private final int zzi;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public SleepClassifyEvent(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) int i2, @SafeParcelable.Param(m796id = 3) int i3, @SafeParcelable.Param(m796id = 4) int i4, @SafeParcelable.Param(m796id = 5) int i5, @SafeParcelable.Param(m796id = 6) int i6, @SafeParcelable.Param(m796id = 7) int i7, @SafeParcelable.Param(m796id = 8) boolean z, @SafeParcelable.Param(m796id = 9) int i8) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = i6;
        this.zzg = i7;
        this.zzh = z;
        this.zzi = i8;
    }

    public static List<SleepClassifyEvent> extractEvents(Intent intent) {
        Preconditions.checkNotNull(intent);
        if (!hasEvents(intent)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT");
        if (arrayList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            byte[] bArr = (byte[]) arrayList.get(i);
            Preconditions.checkNotNull(bArr);
            arrayList2.add((SleepClassifyEvent) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR));
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public static boolean hasEvents(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SleepClassifyEvent) {
            SleepClassifyEvent sleepClassifyEvent = (SleepClassifyEvent) obj;
            return this.zza == sleepClassifyEvent.zza && this.zzb == sleepClassifyEvent.zzb;
        }
        return false;
    }

    public int getConfidence() {
        return this.zzb;
    }

    public int getLight() {
        return this.zzd;
    }

    public int getMotion() {
        return this.zzc;
    }

    public long getTimestampMillis() {
        return this.zza * 1000;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Integer.valueOf(this.zzb));
    }

    public String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        return i + " Conf:" + i2 + " Motion:" + i3 + " Light:" + i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, getConfidence());
        SafeParcelWriter.writeInt(parcel, 3, getMotion());
        SafeParcelWriter.writeInt(parcel, 4, getLight());
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeInt(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzh);
        SafeParcelWriter.writeInt(parcel, 9, this.zzi);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
