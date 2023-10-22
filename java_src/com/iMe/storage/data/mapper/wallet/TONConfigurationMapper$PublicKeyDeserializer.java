package com.iMe.storage.data.mapper.wallet;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.ktor.util.Base64Kt;
import java.lang.reflect.Type;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.api.pub.PublicKey;
import org.ton.api.pub.PublicKeyEd25519;
/* compiled from: TONConfigurationMapping.kt */
/* loaded from: classes3.dex */
final class TONConfigurationMapper$PublicKeyDeserializer implements JsonDeserializer<PublicKey> {
    static {
        new Companion(null);
    }

    @Override // com.google.gson.JsonDeserializer
    public PublicKey deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        JsonObject asJsonObject = jsonElement != null ? jsonElement.getAsJsonObject() : null;
        if (asJsonObject != null && Intrinsics.areEqual(asJsonObject.get("@type").getAsString(), "pub.ed25519")) {
            String asString = asJsonObject.get("key").getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "jsonObject[ADDRESS_KEY].asString");
            return new PublicKeyEd25519(Base64Kt.decodeBase64Bytes(asString));
        }
        return null;
    }

    /* compiled from: TONConfigurationMapping.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
