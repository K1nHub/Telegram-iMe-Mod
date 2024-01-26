package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonClassDiscriminator;
/* compiled from: ShardHashes.kt */
/* renamed from: org.ton.block.ShardHashes$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0 */
/* loaded from: classes6.dex */
public /* synthetic */ class C7786xdec07ac5 implements JsonClassDiscriminator {
    private final /* synthetic */ String discriminator;

    public C7786xdec07ac5(String discriminator) {
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
}
