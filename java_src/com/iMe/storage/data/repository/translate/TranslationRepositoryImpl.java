package com.iMe.storage.data.repository.translate;

import com.iMe.storage.data.mapper.translate.TranslationMappingKt;
import com.iMe.storage.data.network.api.own.GoogleServicesApi;
import com.iMe.storage.data.network.api.own.GoogleTranslationApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.handlers.impl.GoogleServicesErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.translate.TranslationLanguagesResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import com.iMe.storage.domain.repository.translate.TranslationRepository;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
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

    @Override // com.iMe.storage.domain.repository.translate.TranslationRepository
    public Observable<Result<Translation>> translate(String text, String str, String targetLanguage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetLanguage, "targetLanguage");
        ArrayList<CharSequence> cutInBlocks = this.telegramGateway.cutInBlocks(text, 1024);
        ArrayList arrayList = new ArrayList();
        for (Object obj : cutInBlocks) {
            if (!Intrinsics.areEqual((CharSequence) obj, "\n")) {
                arrayList.add(obj);
            }
        }
        Observable fromIterable = Observable.fromIterable(arrayList);
        final TranslationRepositoryImpl$translate$1 translationRepositoryImpl$translate$1 = new TranslationRepositoryImpl$translate$1(this, str, targetLanguage, arrayList);
        Observable observable = fromIterable.concatMap(new Function() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                ObservableSource translate$lambda$1;
                translate$lambda$1 = TranslationRepositoryImpl.translate$lambda$1(Function1.this, obj2);
                return translate$lambda$1;
            }
        }).toList().toObservable();
        final TranslationRepositoryImpl$translate$2 translationRepositoryImpl$translate$2 = new Function1<List<Translation>, Result<? extends Translation>>() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Translation> invoke(final List<Translation> translations) {
                String joinToString$default;
                Intrinsics.checkNotNullParameter(translations, "translations");
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(translations, "", null, null, 0, null, new Function1<Translation, CharSequence>() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final CharSequence invoke(Translation translation) {
                        String repeat = translations.indexOf(translation) == 0 ? "" : StringsKt__StringsJVMKt.repeat("\n", 2);
                        return repeat + translation.getText();
                    }
                }, 30, null);
                Translation translation = (Translation) CollectionsKt.firstOrNull(translations);
                String sourceLang = translation != null ? translation.getSourceLang() : null;
                if (sourceLang == null) {
                    sourceLang = "";
                }
                return Result.Companion.success(new Translation(joinToString$default, sourceLang));
            }
        };
        Observable map = observable.map(new Function() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                Result translate$lambda$2;
                translate$lambda$2 = TranslationRepositoryImpl.translate$lambda$2(Function1.this, obj2);
                return translate$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "override fun translate(\n…Error(errorHandler)\n    }");
        final GoogleServicesErrorHandler googleServicesErrorHandler = this.errorHandler;
        Observable<Result<Translation>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Translation>>() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Translation> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource translate$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result translate$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.translate.TranslationRepository
    public Observable<Result<List<TranslationLanguage>>> languages() {
        Observable<ApiBaseResponse<TranslationLanguagesResponse>> translationLanguages = this.googleServicesApi.getTranslationLanguages();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = translationLanguages.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TranslationLanguagesResponse>, Result<? extends List<TranslationLanguage>>>() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$languages$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<TranslationLanguage>> invoke(ApiBaseResponse<TranslationLanguagesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TranslationMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final GoogleServicesErrorHandler googleServicesErrorHandler = this.errorHandler;
        Observable<Result<List<TranslationLanguage>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<TranslationLanguage>>>() { // from class: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$languages$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<TranslationLanguage>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
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
