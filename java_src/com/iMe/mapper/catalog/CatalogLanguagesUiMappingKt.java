package com.iMe.mapper.catalog;

import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LocaleController;
/* compiled from: CatalogLanguagesUiMapping.kt */
/* loaded from: classes3.dex */
public final class CatalogLanguagesUiMappingKt {
    public static final List<LocaleController.LocaleInfo> mapToUI(List<CatalogLanguage> list) {
        int collectionSizeOrDefault;
        Comparator compareBy;
        List<LocaleController.LocaleInfo> sortedWith;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CatalogLanguage catalogLanguage : list) {
            LocaleController.LocaleInfo localeInfo = new LocaleController.LocaleInfo();
            localeInfo.name = catalogLanguage.getNativeTitle();
            localeInfo.nameEnglish = catalogLanguage.getTitle();
            localeInfo.serverIndex = (int) catalogLanguage.getId();
            arrayList.add(localeInfo);
        }
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(new Function1<LocaleController.LocaleInfo, Comparable<?>>() { // from class: com.iMe.mapper.catalog.CatalogLanguagesUiMappingKt$mapToUI$2
            @Override // kotlin.jvm.functions.Function1
            public final Comparable<?> invoke(LocaleController.LocaleInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(it.name, LocaleController.getCurrentLanguageName()));
            }
        }, new Function1<LocaleController.LocaleInfo, Comparable<?>>() { // from class: com.iMe.mapper.catalog.CatalogLanguagesUiMappingKt$mapToUI$3
            @Override // kotlin.jvm.functions.Function1
            public final Comparable<?> invoke(LocaleController.LocaleInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(it.name, "English"));
            }
        });
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, compareBy);
        return sortedWith;
    }
}
