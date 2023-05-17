package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "RegisterRequestParamsCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class RegisterRequestParams extends RequestParams {
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new zzh();
    public static final int MAX_DISPLAY_HINT_LENGTH = 80;
    @SafeParcelable.Field(getter = "getRequestId", m779id = 2)
    private final Integer zza;
    @SafeParcelable.Field(getter = "getTimeoutSeconds", m779id = 3)
    private final Double zzb;
    @SafeParcelable.Field(getter = "getAppId", m779id = 4)
    private final Uri zzc;
    @SafeParcelable.Field(getter = "getRegisterRequests", m779id = 5)
    private final List zzd;
    @SafeParcelable.Field(getter = "getRegisteredKeys", m779id = 6)
    private final List zze;
    @SafeParcelable.Field(getter = "getChannelIdValue", m779id = 7)
    private final ChannelIdValue zzf;
    @SafeParcelable.Field(getter = "getDisplayHint", m779id = 8)
    private final String zzg;
    private Set zzh;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        Integer zza;
        Double zzb;
        Uri zzc;
        List zzd;
        List zze;
        ChannelIdValue zzf;
        String zzg;

        public RegisterRequestParams build() {
            return new RegisterRequestParams(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
        }

        public Builder setAppId(Uri uri) {
            this.zzc = uri;
            return this;
        }

        public Builder setChannelIdValue(ChannelIdValue channelIdValue) {
            this.zzf = channelIdValue;
            return this;
        }

        public Builder setDisplayHint(String str) {
            this.zzg = str;
            return this;
        }

        public Builder setRegisterRequests(List<RegisterRequest> list) {
            this.zzd = list;
            return this;
        }

        public Builder setRegisteredKeys(List<RegisteredKey> list) {
            this.zze = list;
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.zza = num;
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.zzb = d;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public RegisterRequestParams(@SafeParcelable.Param(m778id = 2) Integer num, @SafeParcelable.Param(m778id = 3) Double d, @SafeParcelable.Param(m778id = 4) Uri uri, @SafeParcelable.Param(m778id = 5) List list, @SafeParcelable.Param(m778id = 6) List list2, @SafeParcelable.Param(m778id = 7) ChannelIdValue channelIdValue, @SafeParcelable.Param(m778id = 8) String str) {
        this.zza = num;
        this.zzb = d;
        this.zzc = uri;
        boolean z = false;
        Preconditions.checkArgument((list == null || list.isEmpty()) ? false : true, "empty list of register requests is provided");
        this.zzd = list;
        this.zze = list2;
        this.zzf = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RegisterRequest registerRequest = (RegisterRequest) it.next();
            Preconditions.checkArgument((uri == null && registerRequest.getAppId() == null) ? false : true, "register request has null appId and no request appId is provided");
            if (registerRequest.getAppId() != null) {
                hashSet.add(Uri.parse(registerRequest.getAppId()));
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            RegisteredKey registeredKey = (RegisteredKey) it2.next();
            Preconditions.checkArgument((uri == null && registeredKey.getAppId() == null) ? false : true, "registered key has null appId and no request appId is provided");
            if (registeredKey.getAppId() != null) {
                hashSet.add(Uri.parse(registeredKey.getAppId()));
            }
        }
        this.zzh = hashSet;
        Preconditions.checkArgument((str == null || str.length() <= 80) ? true : z, "Display Hint cannot be longer than 80 characters");
        this.zzg = str;
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        if (this == obj) {
            return true;
        }
        if (obj instanceof RegisterRequestParams) {
            RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
            return Objects.equal(this.zza, registerRequestParams.zza) && Objects.equal(this.zzb, registerRequestParams.zzb) && Objects.equal(this.zzc, registerRequestParams.zzc) && Objects.equal(this.zzd, registerRequestParams.zzd) && (((list = this.zze) == null && registerRequestParams.zze == null) || (list != null && (list2 = registerRequestParams.zze) != null && list.containsAll(list2) && registerRequestParams.zze.containsAll(this.zze))) && Objects.equal(this.zzf, registerRequestParams.zzf) && Objects.equal(this.zzg, registerRequestParams.zzg);
        }
        return false;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Set<Uri> getAllAppIds() {
        return this.zzh;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Uri getAppId() {
        return this.zzc;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public ChannelIdValue getChannelIdValue() {
        return this.zzf;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public String getDisplayHint() {
        return this.zzg;
    }

    public List<RegisterRequest> getRegisterRequests() {
        return this.zzd;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public List<RegisteredKey> getRegisteredKeys() {
        return this.zze;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Integer getRequestId() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Double getTimeoutSeconds() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzc, this.zzb, this.zzd, this.zze, this.zzf, this.zzg);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
        SafeParcelWriter.writeTypedList(parcel, 5, getRegisterRequests(), false);
        SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
        SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
