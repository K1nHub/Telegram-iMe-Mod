package org.ton.api.adnl;

import java.lang.annotation.Annotation;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.p045tl.TlCombinator;
/* compiled from: AdnlAddress.kt */
@Polymorphic
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface AdnlAddress {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: AdnlAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlCombinator<AdnlAddress> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
            super(Reflection.getOrCreateKotlinClass(AdnlAddress.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AdnlAddressUdp.class), AdnlAddressUdp.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AdnlAddressUdp6.class), AdnlAddressUdp6.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AdnlAddressTunnel.class), AdnlAddressTunnel.Companion));
        }

        public final KSerializer<AdnlAddress> serializer() {
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AdnlAddress.class);
            KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(AdnlAddressTunnel.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp6.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp6.class)};
            AdnlAddressUdp$$serializer adnlAddressUdp$$serializer = AdnlAddressUdp$$serializer.INSTANCE;
            AdnlAddressUdp6$$serializer adnlAddressUdp6$$serializer = AdnlAddressUdp6$$serializer.INSTANCE;
            return new SealedClassSerializer("org.ton.api.adnl.AdnlAddress", orCreateKotlinClass, kClassArr, new KSerializer[]{AdnlAddressTunnel$$serializer.INSTANCE, adnlAddressUdp$$serializer, adnlAddressUdp6$$serializer, adnlAddressUdp$$serializer, adnlAddressUdp6$$serializer}, new Annotation[]{new C7689x63816b8c("@type")});
        }
    }
}
