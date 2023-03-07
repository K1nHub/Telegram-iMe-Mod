package com.auth0.android.jwt;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
/* loaded from: classes.dex */
class ClaimImpl extends BaseClaim {
    private final JsonElement value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClaimImpl(JsonElement jsonElement) {
        this.value = jsonElement;
    }

    @Override // com.auth0.android.jwt.BaseClaim, com.auth0.android.jwt.Claim
    public String asString() {
        if (this.value.isJsonPrimitive()) {
            return this.value.getAsString();
        }
        return null;
    }

    @Override // com.auth0.android.jwt.BaseClaim, com.auth0.android.jwt.Claim
    public <T> T asObject(Class<T> cls) throws DecodeException {
        try {
            if (this.value.isJsonNull()) {
                return null;
            }
            return (T) new Gson().fromJson(this.value, (Class<Object>) cls);
        } catch (JsonSyntaxException e) {
            throw new DecodeException("Failed to decode claim as " + cls.getSimpleName(), e);
        }
    }
}
