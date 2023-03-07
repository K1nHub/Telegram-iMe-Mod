package com.smedialink.storage.data.repository.translate;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.smedialink.storage.data.mapper.translate.TranslationMappingKt;
import com.smedialink.storage.data.network.api.own.GoogleServicesApi;
import com.smedialink.storage.data.network.api.own.GoogleTranslationApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.translation.Translation;
import com.smedialink.storage.domain.model.translation.TranslationLanguage;
import com.smedialink.storage.domain.repository.translate.TranslationRepository;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* compiled from: TranslationRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TranslationRepositoryImpl implements TranslationRepository {
    private final GoogleServicesErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final GoogleServicesApi googleServicesApi;
    private final GoogleTranslationApi googleTranslationApi;
    private final TelegramGateway telegramGateway;
    private final List<String> userAgents;

    static {
        new Companion(null);
    }

    public TranslationRepositoryImpl(GoogleServicesApi googleServicesApi, GoogleTranslationApi googleTranslationApi, TelegramGateway telegramGateway, FirebaseFunctionsErrorHandler firebaseErrorHandler, GoogleServicesErrorHandler errorHandler) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(googleServicesApi, "googleServicesApi");
        Intrinsics.checkNotNullParameter(googleTranslationApi, "googleTranslationApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.googleServicesApi = googleServicesApi;
        this.googleTranslationApi = googleTranslationApi;
        this.telegramGateway = telegramGateway;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36");
        this.userAgents = mutableListOf;
    }

    @Override // com.smedialink.storage.domain.repository.translate.TranslationRepository
    public Observable<Result<Translation>> translate(String text, final String str, final String targetLanguage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetLanguage, "targetLanguage");
        ArrayList<CharSequence> cutInBlocks = this.telegramGateway.cutInBlocks(text, 1024);
        final ArrayList arrayList = new ArrayList();
        for (Object obj : cutInBlocks) {
            if (!Intrinsics.areEqual((CharSequence) obj, "\n")) {
                arrayList.add(obj);
            }
        }
        Observable map = Observable.fromIterable(arrayList).concatMap(new Function() { // from class: com.smedialink.storage.data.repository.translate.TranslationRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                ObservableSource m1377translate$lambda3;
                m1377translate$lambda3 = TranslationRepositoryImpl.m1377translate$lambda3(TranslationRepositoryImpl.this, str, targetLanguage, arrayList, (CharSequence) obj2);
                return m1377translate$lambda3;
            }
        }).toList().toObservable().map(TranslationRepositoryImpl$$ExternalSyntheticLambda3.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "fromIterable(blocks)\n   …ccess()\n                }");
        Observable<Result<Translation>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: translate$lambda-3  reason: not valid java name */
    public static final ObservableSource m1377translate$lambda3(TranslationRepositoryImpl this$0, String str, String targetLanguage, final List blocks, CharSequence blockText) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(targetLanguage, "$targetLanguage");
        Intrinsics.checkNotNullParameter(blocks, "$blocks");
        Intrinsics.checkNotNullParameter(blockText, "blockText");
        GoogleTranslationApi googleTranslationApi = this$0.googleTranslationApi;
        String str2 = (String) CollectionsKt.random(this$0.userAgents, Random.Default);
        if (str == null) {
            str = TtmlNode.TEXT_EMPHASIS_AUTO;
        }
        return googleTranslationApi.translate(str2, str, targetLanguage, blockText.toString()).map(TranslationRepositoryImpl$$ExternalSyntheticLambda2.INSTANCE).compose(new ObservableTransformer() { // from class: com.smedialink.storage.data.repository.translate.TranslationRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                ObservableSource m1379translate$lambda3$lambda2;
                m1379translate$lambda3$lambda2 = TranslationRepositoryImpl.m1379translate$lambda3$lambda2(blocks, observable);
                return m1379translate$lambda3$lambda2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: translate$lambda-3$lambda-1  reason: not valid java name */
    public static final Translation m1378translate$lambda3$lambda1(ArrayList response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return TranslationMappingKt.mapToDomain(response);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: translate$lambda-3$lambda-2  reason: not valid java name */
    public static final ObservableSource m1379translate$lambda3$lambda2(List blocks, Observable observable) {
        Intrinsics.checkNotNullParameter(blocks, "$blocks");
        Intrinsics.checkNotNullParameter(observable, "observable");
        return blocks.size() > 1 ? observable.delay(600L, TimeUnit.MILLISECONDS) : observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: translate$lambda-4  reason: not valid java name */
    public static final Result m1380translate$lambda4(List translations) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(translations, "translations");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(translations, "", null, null, 0, null, new TranslationRepositoryImpl$translate$2$1(translations), 30, null);
        Translation translation = (Translation) CollectionsKt.firstOrNull(translations);
        String sourceLang = translation == null ? null : translation.getSourceLang();
        if (sourceLang == null) {
            sourceLang = "";
        }
        return Result.Companion.success(new Translation(joinToString$default, sourceLang));
    }

    @Override // com.smedialink.storage.domain.repository.translate.TranslationRepository
    public Observable<Result<List<TranslationLanguage>>> languages() {
        Observable<ApiBaseResponse<TranslationLanguagesResponse>> translationLanguages = this.googleServicesApi.getTranslationLanguages();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = translationLanguages.map(new Function() { // from class: com.smedialink.storage.data.repository.translate.TranslationRepositoryImpl$languages$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TranslationMappingKt.mapToDomain((TranslationLanguagesResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TranslationLanguage>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* compiled from: TranslationRepositoryImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
