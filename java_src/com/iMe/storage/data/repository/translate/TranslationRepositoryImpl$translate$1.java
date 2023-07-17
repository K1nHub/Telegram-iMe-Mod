package com.iMe.storage.data.repository.translate;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.storage.data.mapper.translate.TranslationMappingKt;
import com.iMe.storage.data.network.api.own.GoogleTranslationApi;
import com.iMe.storage.domain.model.translation.Translation;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.random.Random;
/* compiled from: TranslationRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class TranslationRepositoryImpl$translate$1 extends Lambda implements Function1<CharSequence, ObservableSource<? extends Translation>> {
    final /* synthetic */ List<CharSequence> $blocks;
    final /* synthetic */ String $sourceLanguage;
    final /* synthetic */ String $targetLanguage;
    final /* synthetic */ TranslationRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TranslationRepositoryImpl$translate$1(TranslationRepositoryImpl translationRepositoryImpl, String str, String str2, List<? extends CharSequence> list) {
        super(1);
        this.this$0 = translationRepositoryImpl;
        this.$sourceLanguage = str;
        this.$targetLanguage = str2;
        this.$blocks = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Translation> invoke(CharSequence blockText) {
        GoogleTranslationApi googleTranslationApi;
        List list;
        Intrinsics.checkNotNullParameter(blockText, "blockText");
        googleTranslationApi = this.this$0.googleTranslationApi;
        list = this.this$0.userAgents;
        String str = (String) CollectionsKt.random(list, Random.Default);
        String str2 = this.$sourceLanguage;
        if (str2 == null) {
            str2 = TtmlNode.TEXT_EMPHASIS_AUTO;
        }
        Observable<ArrayList<Object>> translate = googleTranslationApi.translate(str, str2, this.$targetLanguage, blockText.toString());
        final C19341 c19341 = C19341.INSTANCE;
        Observable<R> map = translate.map(new Function() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Translation invoke$lambda$0;
                invoke$lambda$0 = TranslationRepositoryImpl$translate$1.invoke$lambda$0(Function1.this, obj);
                return invoke$lambda$0;
            }
        });
        final C19352 c19352 = new C19352(this.$blocks);
        return map.compose(new ObservableTransformer() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                ObservableSource invoke$lambda$1;
                invoke$lambda$1 = TranslationRepositoryImpl$translate$1.invoke$lambda$1(Function1.this, observable);
                return invoke$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TranslationRepositoryImpl.kt */
    /* renamed from: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19341 extends Lambda implements Function1<ArrayList<Object>, Translation> {
        public static final C19341 INSTANCE = new C19341();

        C19341() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Translation invoke(ArrayList<Object> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            return TranslationMappingKt.mapToDomain(response);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Translation invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Translation) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TranslationRepositoryImpl.kt */
    /* renamed from: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$1$2 */
    /* loaded from: classes3.dex */
    public static final class C19352 extends Lambda implements Function1<Observable<Translation>, ObservableSource<Translation>> {
        final /* synthetic */ List<CharSequence> $blocks;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C19352(List<? extends CharSequence> list) {
            super(1);
            this.$blocks = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public final ObservableSource<Translation> invoke(Observable<Translation> observable) {
            Intrinsics.checkNotNullParameter(observable, "observable");
            return this.$blocks.size() > 1 ? observable.delay(600L, TimeUnit.MILLISECONDS) : observable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$1(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }
}
