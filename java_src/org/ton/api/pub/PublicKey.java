package org.ton.api.pub;

import java.lang.annotation.Annotation;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.crypto.Encryptor;
import org.ton.p044tl.TlCombinator;
/* compiled from: pub.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface PublicKey extends Encryptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    AdnlIdShort toAdnlIdShort();

    /* compiled from: pub.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlCombinator<PublicKey> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
            super(Reflection.getOrCreateKotlinClass(PublicKey.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(PublicKeyEd25519.class), PublicKeyEd25519.Companion.tlConstructor()), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(PublicKeyUnencrypted.class), PublicKeyUnencrypted.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(PublicKeyAes.class), PublicKeyAes.Companion), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(PublicKeyOverlay.class), PublicKeyOverlay.Companion));
        }

        public final KSerializer<PublicKey> serializer() {
            return new SealedClassSerializer("org.ton.api.pub.PublicKey", Reflection.getOrCreateKotlinClass(PublicKey.class), new KClass[]{Reflection.getOrCreateKotlinClass(PublicKeyAes.class), Reflection.getOrCreateKotlinClass(PublicKeyEd25519.class), Reflection.getOrCreateKotlinClass(PublicKeyOverlay.class), Reflection.getOrCreateKotlinClass(PublicKeyUnencrypted.class)}, new KSerializer[]{PublicKeyAes$$serializer.INSTANCE, PublicKeyEd25519$$serializer.INSTANCE, PublicKeyOverlay$$serializer.INSTANCE, PublicKeyUnencrypted$$serializer.INSTANCE}, new Annotation[]{new C7439x79401cc9("@type")});
        }
    }
}
