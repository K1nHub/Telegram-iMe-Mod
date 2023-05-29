package com.iMe.p031ui.chat;

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
/* renamed from: com.iMe.ui.chat.ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2028x7ed9d4d7 extends Lambda implements Function1<Result<? extends List<TranslationLanguage>>, Unit> {
    final /* synthetic */ String $currentLanguage$inlined;
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2028x7ed9d4d7(ChatPresenter chatPresenter, String str) {
        super(1);
        this.this$0 = chatPresenter;
        this.$currentLanguage$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<TranslationLanguage>> result) {
        m1335invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1335invoke(Result<? extends List<TranslationLanguage>> it) {
        ResourceManager resourceManager;
        int collectionSizeOrDefault;
        List sortedWith;
        List<TranslationLanguageUiModel> mutableList;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<TranslationLanguage>> result = it;
        if (result instanceof Result.Success) {
            ChatView chatView = (ChatView) this.this$0.getViewState();
            Iterable<TranslationLanguage> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TranslationLanguage translationLanguage : iterable) {
                arrayList.add(TranslationUiMappingKt.mapToUI(translationLanguage, this.$currentLanguage$inlined));
            }
            final Collator collator = Collator.getInstance(new Locale(this.$currentLanguage$inlined));
            Intrinsics.checkNotNullExpressionValue(collator, "getInstance(Locale(currentLanguage))");
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.chat.ChatPresenter$loadTextTranslateLanguages$lambda$5$$inlined$compareBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return collator.compare(((TranslationLanguageUiModel) t).getDisplayLanguage(), ((TranslationLanguageUiModel) t2).getDisplayLanguage());
                }
            });
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
            chatView.onLanguagesLoaded(mutableList);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((ChatView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}