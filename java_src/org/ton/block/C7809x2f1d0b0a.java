package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonClassDiscriminator;
/* compiled from: TransSplitPrepare.kt */
/* renamed from: org.ton.block.TransSplitPrepare$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0 */
/* loaded from: classes6.dex */
public /* synthetic */ class C7809x2f1d0b0a implements JsonClassDiscriminator {
    private final /* synthetic */ String discriminator;

    public C7809x2f1d0b0a(String discriminator) {
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
