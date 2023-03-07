package com.smedialink.mapper.catalog;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.LocaleController;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogLanguagesUiMapping.kt */
/* loaded from: classes3.dex */
public final class CatalogLanguagesUiMappingKt$mapToUI$3 extends Lambda implements Function1<LocaleController.LocaleInfo, Comparable<?>> {
    public static final CatalogLanguagesUiMappingKt$mapToUI$3 INSTANCE = new CatalogLanguagesUiMappingKt$mapToUI$3();

    CatalogLanguagesUiMappingKt$mapToUI$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Comparable<?> invoke(LocaleController.LocaleInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!Intrinsics.areEqual(it.name, "English"));
    }
}
