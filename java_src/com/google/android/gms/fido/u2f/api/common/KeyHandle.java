package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "KeyHandleCreator")
@Deprecated
/* loaded from: classes.dex */
public class KeyHandle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<KeyHandle> CREATOR = new zze();
    @SafeParcelable.VersionField(getter = "getVersionCode", m776id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getBytes", m779id = 2)
    private final byte[] zzb;
    @SafeParcelable.Field(getter = "getProtocolVersionAsString", m779id = 3, type = "java.lang.String")
    private final ProtocolVersion zzc;
    @SafeParcelable.Field(getter = "getTransports", m779id = 4)
    private final List zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public KeyHandle(@SafeParcelable.Param(m778id = 1) int i, @SafeParcelable.Param(m778id = 2) byte[] bArr, @SafeParcelable.Param(m778id = 3) String str, @SafeParcelable.Param(m778id = 4) List list) {
        this.zza = i;
        this.zzb = bArr;
        try {
            this.zzc = ProtocolVersion.fromString(str);
            this.zzd = list;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static KeyHandle parseFromJson(JSONObject jSONObject) throws JSONException {
        try {
            try {
                return new KeyHandle(Base64.decode(jSONObject.getString(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE), 8), ProtocolVersion.fromString(jSONObject.has("version") ? jSONObject.getString("version") : null), jSONObject.has("transports") ? Transport.parseTransports(jSONObject.getJSONArray("transports")) : null);
            } catch (IllegalArgumentException e) {
                throw new JSONException(e.toString());
            }
        } catch (ProtocolVersion.UnsupportedProtocolException e2) {
            throw new JSONException(e2.toString());
        }
    }

    public boolean equals(Object obj) {
        List list;
        if (this == obj) {
            return true;
        }
        if (obj instanceof KeyHandle) {
            KeyHandle keyHandle = (KeyHandle) obj;
            if (Arrays.equals(this.zzb, keyHandle.zzb) && this.zzc.equals(keyHandle.zzc)) {
                List list2 = this.zzd;
                if (list2 == null && keyHandle.zzd == null) {
                    return true;
                }
                return list2 != null && (list = keyHandle.zzd) != null && list2.containsAll(list) && keyHandle.zzd.containsAll(this.zzd);
            }
            return false;
        }
        return false;
    }

    public byte[] getBytes() {
        return this.zzb;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.zzc;
    }

    public List<Transport> getTransports() {
        return this.zzd;
    }

    public int getVersionCode() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.zzb)), this.zzc, this.zzd);
    }

    public JSONObject toJson() {
        return zza();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
        SafeParcelWriter.writeByteArray(parcel, 2, getBytes(), false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc.toString(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte[] bArr = this.zzb;
            if (bArr != null) {
                jSONObject.put(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE, Base64.encodeToString(bArr, 11));
            }
            ProtocolVersion protocolVersion = this.zzc;
            if (protocolVersion != null) {
                jSONObject.put("version", protocolVersion.toString());
            }
            if (this.zzd != null) {
                JSONArray jSONArray = new JSONArray();
                for (Transport transport : this.zzd) {
                    jSONArray.put(transport.toString());
                }
                jSONObject.put("transports", jSONArray);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public String toString() {
        List list = this.zzd;
        return String.format("{keyHandle: %s, version: %s, transports: %s}", Base64Utils.encode(this.zzb), this.zzc, list == null ? "null" : list.toString());
    }

    public KeyHandle(byte[] bArr, ProtocolVersion protocolVersion, List<Transport> list) {
        this.zza = 1;
        this.zzb = bArr;
        this.zzc = protocolVersion;
        this.zzd = list;
    }
}
