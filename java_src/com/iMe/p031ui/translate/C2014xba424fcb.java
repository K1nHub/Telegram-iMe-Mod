package com.iMe.p031ui.translate;

import com.iMe.mapper.translation.TranslationUiMappingKt;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.translate.TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2014xba424fcb extends Lambda implements Function1<Result<? extends List<TranslationLanguage>>, Unit> {
    final /* synthetic */ boolean $isSourceLanguage$inlined;
    final /* synthetic */ TranslationPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2014xba424fcb(TranslationPresenter translationPresenter, boolean z) {
        super(1);
        this.this$0 = translationPresenter;
        this.$isSourceLanguage$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<TranslationLanguage>> result) {
        m1349invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1349invoke(Result<? extends List<TranslationLanguage>> it) {
        ResourceManager resourceManager;
        int collectionSizeOrDefault;
        String currentLanguage;
        List sortedWith;
        List mutableList;
        List<TranslationLanguageUiModel> list;
        String currentLanguage2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<TranslationLanguage>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.isSource = this.$isSourceLanguage$inlined;
            TranslationLanguageUiModel translationLanguageUiModel = this.$isSourceLanguage$inlined ? this.this$0.sourceLanguage : this.this$0.targetLanguage;
            TranslationPresenter translationPresenter = this.this$0;
            Iterable<TranslationLanguage> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TranslationLanguage translationLanguage : iterable) {
                currentLanguage2 = this.this$0.getCurrentLanguage();
                arrayList.add(TranslationUiMappingKt.mapToUI(translationLanguage, currentLanguage2));
            }
            currentLanguage = this.this$0.getCurrentLanguage();
            final Collator collator = Collator.getInstance(new Locale(currentLanguage));
            Intrinsics.checkNotNullExpressionValue(collator, "getInstance(Locale(currentLanguage))");
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.translate.TranslationPresenter$loadLanguages$lambda$2$$inlined$compareBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return collator.compare(((TranslationLanguageUiModel) t).getDisplayLanguage(), ((TranslationLanguageUiModel) t2).getDisplayLanguage());
                }
            });
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
            translationPresenter.supportedLanguages = mutableList;
            list = this.this$0.supportedLanguages;
            ((TranslationView) this.this$0.getViewState()).showLanguages(list, translationLanguageUiModel.getLanguageCode());
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((TranslationView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
