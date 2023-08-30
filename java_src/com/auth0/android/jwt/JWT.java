package com.auth0.android.jwt;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes.dex */
public class JWT implements Parcelable {
    public static final Parcelable.Creator<JWT> CREATOR = new Parcelable.Creator<JWT>() { // from class: com.auth0.android.jwt.JWT.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JWT createFromParcel(Parcel parcel) {
            return new JWT(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JWT[] newArray(int i) {
            return new JWT[i];
        }
    };
    private JWTPayload payload;
    private final String token;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JWT(String str) {
        decode(str);
        this.token = str;
    }

    public Claim getClaim(String str) {
        return this.payload.claimForName(str);
    }

    public String toString() {
        return this.token;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.token);
    }

    private void decode(String str) {
        String[] splitToken = splitToken(str);
        Map map = (Map) parseJson(base64Decode(splitToken[0]), new TypeToken<Map<String, String>>(this) { // from class: com.auth0.android.jwt.JWT.2
        }.getType());
        this.payload = (JWTPayload) parseJson(base64Decode(splitToken[1]), JWTPayload.class);
        String str2 = splitToken[2];
    }

    private String[] splitToken(String str) {
        String[] split = str.split("\\.");
        if (split.length == 2 && str.endsWith(".")) {
            split = new String[]{split[0], split[1], ""};
        }
        if (split.length == 3) {
            return split;
        }
        throw new DecodeException(String.format("The token was expected to have 3 parts, but got %s.", Integer.valueOf(split.length)));
    }

    private String base64Decode(String str) {
        try {
            return new String(Base64.decode(str, 11), Charset.defaultCharset());
        } catch (IllegalArgumentException e) {
            throw new DecodeException("Received bytes didn't correspond to a valid Base64 encoded string.", e);
        }
    }

    private <T> T parseJson(String str, Type type) {
        try {
            return (T) getGson().fromJson(str, type);
        } catch (Exception e) {
            throw new DecodeException("The token's payload had an invalid JSON format.", e);
        }
    }

    static Gson getGson() {
        return new GsonBuilder().registerTypeAdapter(JWTPayload.class, new JWTDeserializer()).create();
    }
}
