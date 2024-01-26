package org.ton.api.p044pk;

import java.lang.annotation.Annotation;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.pub.PublicKey;
import org.ton.crypto.Decryptor;
import org.ton.p045tl.TlCombinator;
/* compiled from: pk.kt */
@Serializable
/* renamed from: org.ton.api.pk.PrivateKey */
/* loaded from: classes6.dex */
public interface PrivateKey extends Decryptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    PublicKey publicKey();

    /* compiled from: pk.kt */
    /* renamed from: org.ton.api.pk.PrivateKey$DefaultImpls */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static AdnlIdShort toAdnlIdShort(PrivateKey privateKey) {
            return privateKey.publicKey().toAdnlIdShort();
        }
    }

    /* compiled from: pk.kt */
    /* renamed from: org.ton.api.pk.PrivateKey$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlCombinator<PrivateKey> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
            super(Reflection.getOrCreateKotlinClass(PrivateKey.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(PrivateKeyUnencrypted.class), PrivateKeyUnencrypted.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(PrivateKeyEd25519.class), PrivateKeyEd25519.Companion.tlConstructor()), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(PrivateKeyAes.class), PrivateKeyAes.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(PrivateKeyOverlay.class), PrivateKeyOverlay.Companion));
        }

        public final KSerializer<PrivateKey> serializer() {
            return new SealedClassSerializer("org.ton.api.pk.PrivateKey", Reflection.getOrCreateKotlinClass(PrivateKey.class), new KClass[]{Reflection.getOrCreateKotlinClass(PrivateKeyAes.class), Reflection.getOrCreateKotlinClass(PrivateKeyEd25519.class), Reflection.getOrCreateKotlinClass(PrivateKeyOverlay.class), Reflection.getOrCreateKotlinClass(PrivateKeyUnencrypted.class)}, new KSerializer[]{PrivateKeyAes$$serializer.INSTANCE, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(PrivateKeyEd25519.class), new Annotation[0]), PrivateKeyOverlay$$serializer.INSTANCE, PrivateKeyUnencrypted$$serializer.INSTANCE}, new Annotation[0]);
        }
    }
}
