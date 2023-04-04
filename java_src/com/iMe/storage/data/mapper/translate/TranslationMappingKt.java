package com.iMe.storage.data.mapper.translate;

import com.iMe.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: TranslationMapping.kt */
/* loaded from: classes3.dex */
public final class TranslationMappingKt {
    public static final Translation mapToDomain(ArrayList<Object> arrayList) {
        List<ArrayList> filterNotNull;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        Object obj = arrayList.get(0);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Iterable<java.util.ArrayList<kotlin.Any?>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Any?> }>");
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull((Iterable) obj);
        ArrayList arrayList2 = new ArrayList();
        for (ArrayList arrayList3 : filterNotNull) {
            Object obj2 = arrayList3.get(0);
            if (obj2 != null) {
                arrayList2.add(obj2);
            }
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList2, "", null, null, 0, null, null, 62, null);
        return new Translation(joinToString$default, arrayList.get(2).toString());
    }

    public static final List<TranslationLanguage> mapToDomain(TranslationLanguagesResponse translationLanguagesResponse) {
        int collectionSizeOrDefault;
        List<TranslationLanguage> mutableList;
        boolean contains$default;
        Intrinsics.checkNotNullParameter(translationLanguagesResponse, "<this>");
        List<String> languageCodes = translationLanguagesResponse.getLanguageCodes();
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : languageCodes) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) ((String) obj), (CharSequence) "-", false, 2, (Object) null);
            if (!contains$default) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (String str : arrayList) {
            arrayList2.add(new TranslationLanguage(str));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        return mutableList;
    }
}
