package com.smedialink.mapper.catalog;

import com.smedialink.storage.domain.model.catalog.CatalogLanguage;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
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
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(CatalogLanguagesUiMappingKt$mapToUI$2.INSTANCE, CatalogLanguagesUiMappingKt$mapToUI$3.INSTANCE);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, compareBy);
        return sortedWith;
    }
}
