package org.ton.hashmap;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: UnaryZero.kt */
@Serializable
/* loaded from: classes6.dex */
public final class UnaryZero extends Unary {
    private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final UnaryZero INSTANCE = new UnaryZero();

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.hashmap.UnaryZero.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return new ObjectSerializer("unary_zero", UnaryZero.INSTANCE, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.hashmap.UnaryZero$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
                    private final /* synthetic */ String discriminator;

                    {
                        Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                        this.discriminator = discriminator;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final /* synthetic */ Class annotationType() {
                        return JsonClassDiscriminator.class;
                    }

                    @Override // kotlinx.serialization.json.JsonClassDiscriminator
                    public final /* synthetic */ String discriminator() {
                        return this.discriminator;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final boolean equals(Object obj) {
                        return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
                    }

                    @Override // java.lang.annotation.Annotation
                    public final int hashCode() {
                        return this.discriminator.hashCode() ^ 707790692;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final String toString() {
                        return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
                    }
                }});
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    private final /* synthetic */ KSerializer get$cachedSerializer() {
        return $cachedSerializer$delegate.getValue();
    }

    public final KSerializer<UnaryZero> serializer() {
        return get$cachedSerializer();
    }

    private UnaryZero() {
        super(null);
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return printer.type("unary_zero");
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
