package com.iMe.bots.usecase;

import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.google.firebase.firestore.QuerySnapshot;
import com.iMe.bots.data.SmartReplier;
import com.iMe.bots.data.mapper.BotCategoryMapper;
import com.iMe.bots.data.mapper.ResponseMapper;
import com.iMe.bots.data.mapper.ShopItemMapper;
import com.iMe.bots.data.model.BotStatus;
import com.iMe.bots.data.model.database.BotsCategoryDbModel;
import com.iMe.bots.data.model.database.BotsDbModel;
import com.iMe.bots.data.model.database.TagDbModel;
import com.iMe.bots.data.repository.BotsRepository;
import com.iMe.bots.data.repository.UserAnswersRepository;
import com.iMe.bots.domain.AigramBot;
import com.iMe.bots.domain.Replier;
import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.DownloadSession;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.domain.model.ShopProduct;
import com.iMe.bots.domain.model.SmartBotCategory;
import com.iMe.bots.domain.model.SmartBotResponse;
import com.iMe.bots.usecase.AiBotsManager;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.lingala.zip4j.core.ZipFile;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager {
    public static final Companion Companion = new Companion(null);
    private static volatile AiBotsManager INSTANCE;
    private final List<AigramBot> activeBots;
    private final UserAnswersRepository answersRepository;
    private BotsListChangedCallback botDisableCallback;
    private final BotsRepository botsRepository;
    private final BotCategoryMapper categoriesMapper;
    private List<TagDbModel> currentTags;
    private final File destinationPath;
    private final CompositeDisposable disposables;
    private final DownloadManager downloadManager;
    private final Map<Long, DownloadSession> downloads;
    private final File downloadsPath;
    private final Replier replier;
    private final ResponseMapper responseMapper;
    private final ShopItemMapper shopItemMapper;

    /* compiled from: AiBotsManager.kt */
    /* loaded from: classes3.dex */
    public interface AppInstalledCallback {
        void onSuccess();
    }

    /* compiled from: AiBotsManager.kt */
    /* loaded from: classes3.dex */
    public interface BotsListChangedCallback {
        void onSuccess();
    }

    /* compiled from: AiBotsManager.kt */
    /* loaded from: classes3.dex */
    public interface FirebaseSnapshotCallback {
        void onSuccess();
    }

    /* compiled from: AiBotsManager.kt */
    /* loaded from: classes3.dex */
    public interface SmartReplierCallback {
        void onError(Throwable th);

        void onSuccess(List<SmartBotResponse> list);
    }

    public /* synthetic */ AiBotsManager(Context context, File file, File file2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, file, file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchVotes$lambda$22() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleChosenBotAnswer$lambda$29() {
    }

    private AiBotsManager(Context context, File file, File file2) {
        List<TagDbModel> emptyList;
        this.downloadsPath = file;
        this.destinationPath = file2;
        this.activeBots = new ArrayList();
        this.downloads = new LinkedHashMap();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.currentTags = emptyList;
        UserAnswersRepository userAnswersRepository = new UserAnswersRepository(context);
        this.answersRepository = userAnswersRepository;
        BotsRepository botsRepository = new BotsRepository(context, file2);
        this.botsRepository = botsRepository;
        ResponseMapper responseMapper = new ResponseMapper(botsRepository, context);
        this.responseMapper = responseMapper;
        this.shopItemMapper = new ShopItemMapper();
        this.categoriesMapper = new BotCategoryMapper();
        this.replier = new SmartReplier(this, responseMapper, userAnswersRepository);
        Object systemService = context.getSystemService("download");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
        this.downloadManager = (DownloadManager) systemService;
        this.disposables = new CompositeDisposable();
    }

    /* compiled from: AiBotsManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AiBotsManager getInstance(Context context, File downloadsPath, File destinationPath) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(downloadsPath, "downloadsPath");
            Intrinsics.checkNotNullParameter(destinationPath, "destinationPath");
            if (AiBotsManager.INSTANCE == null) {
                synchronized (Reflection.getOrCreateKotlinClass(AiBotsManager.class)) {
                    Companion companion = AiBotsManager.Companion;
                    AiBotsManager.INSTANCE = new AiBotsManager(context, downloadsPath, destinationPath, null);
                    Unit unit = Unit.INSTANCE;
                }
            }
            AiBotsManager aiBotsManager = AiBotsManager.INSTANCE;
            Intrinsics.checkNotNull(aiBotsManager);
            return aiBotsManager;
        }
    }

    static {
        SetsKt__SetsKt.setOf((Object[]) new String[]{"ru_MD", "ru_UA", "ru_RU", "ru_KZ", "ru_KG", "ru_BY", "ru", "hy_AM", "hy", "uz_Cyrl_UZ", "uz_Cyrl", "tg_Cyrl_TJ", "tg_Cyrl", "az_Cyrl_AZ", "az_Cyrl"});
        SetsKt__SetsKt.setOf((Object[]) new String[]{"7", "373", "374", "375", "380", "992", "994", "996", "998"});
    }

    public final List<AigramBot> getActiveBots() {
        return this.activeBots;
    }

    public final List<TagDbModel> getCurrentTags() {
        return this.currentTags;
    }

    public final void setCurrentTags(List<TagDbModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.currentTags = list;
    }

    public final BotsRepository getBotsRepository() {
        return this.botsRepository;
    }

    public final BotsListChangedCallback getBotDisableCallback() {
        return this.botDisableCallback;
    }

    public final void setBotDisableCallback(BotsListChangedCallback botsListChangedCallback) {
        this.botDisableCallback = botsListChangedCallback;
    }

    public final Single<List<String>> getAvailableSkus() {
        return this.botsRepository.getSkus();
    }

    public final void getAvailableResponses(String sentence, long j, SmartReplierCallback smartReplierCallback) {
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        Intrinsics.checkNotNullParameter(smartReplierCallback, "smartReplierCallback");
        this.replier.getResponsesFromBots(sentence, j, smartReplierCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rebuildActiveBotsList() {
        Single<List<AigramBot>> observeOn = this.botsRepository.getActiveBotsList().subscribeOn(Schedulers.m674io()).observeOn(AndroidSchedulers.mainThread());
        final AiBotsManager$rebuildActiveBotsList$1 aiBotsManager$rebuildActiveBotsList$1 = new AiBotsManager$rebuildActiveBotsList$1(this);
        Consumer<? super List<AigramBot>> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda30
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.rebuildActiveBotsList$lambda$0(Function1.this, obj);
            }
        };
        final AiBotsManager$rebuildActiveBotsList$2 aiBotsManager$rebuildActiveBotsList$2 = AiBotsManager$rebuildActiveBotsList$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.rebuildActiveBotsList$lambda$1(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rebuildActiveBotsList$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rebuildActiveBotsList$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void sendAppInstalledEvent(final long j, final AppInstalledCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Completable subscribeOn = this.botsRepository.sendAppInstallEvent(j).subscribeOn(Schedulers.m674io());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.sendAppInstalledEvent$lambda$3(AiBotsManager.AppInstalledCallback.this, j);
            }
        };
        final AiBotsManager$sendAppInstalledEvent$2 aiBotsManager$sendAppInstalledEvent$2 = AiBotsManager$sendAppInstalledEvent$2.INSTANCE;
        this.disposables.add(subscribeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda22
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.sendAppInstalledEvent$lambda$4(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendAppInstalledEvent$lambda$3(AppInstalledCallback callback, long j) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.onSuccess();
        Log.d("Remote event", "App installed event, user id " + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendAppInstalledEvent$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendBotInstalledEvent(final String str, final long j) {
        Completable subscribeOn = this.botsRepository.sendBotInstallEvent(str, j).subscribeOn(Schedulers.m674io());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.sendBotInstalledEvent$lambda$6(str, j);
            }
        };
        final AiBotsManager$sendBotInstalledEvent$2 aiBotsManager$sendBotInstalledEvent$2 = AiBotsManager$sendBotInstalledEvent$2.INSTANCE;
        this.disposables.add(subscribeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda34
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.sendBotInstalledEvent$lambda$7(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendBotInstalledEvent$lambda$6(String botId, long j) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Log.d("Remote event", "Bot " + botId + " installed event, user id " + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendBotInstalledEvent$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void sendBotRatingEvent(String botId, long j, int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Single<Integer> subscribeOn = this.botsRepository.sendBotRating(botId, j, i).subscribeOn(Schedulers.m674io());
        final AiBotsManager$sendBotRatingEvent$1 aiBotsManager$sendBotRatingEvent$1 = new AiBotsManager$sendBotRatingEvent$1(botId, i, j);
        Consumer<? super Integer> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.sendBotRatingEvent$lambda$9(Function1.this, obj);
            }
        };
        final AiBotsManager$sendBotRatingEvent$2 aiBotsManager$sendBotRatingEvent$2 = AiBotsManager$sendBotRatingEvent$2.INSTANCE;
        this.disposables.add(subscribeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda32
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.sendBotRatingEvent$lambda$10(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendBotRatingEvent$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendBotRatingEvent$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final Observable<List<ShopItem>> getAllBotsObservable(BotLanguage botLanguage, String language) {
        Intrinsics.checkNotNullParameter(botLanguage, "botLanguage");
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<BotsDbModel>> botsListObservable = this.botsRepository.getBotsListObservable();
        final AiBotsManager$getAllBotsObservable$1 aiBotsManager$getAllBotsObservable$1 = new AiBotsManager$getAllBotsObservable$1(botLanguage);
        Observable<R> map = botsListObservable.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda43
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List allBotsObservable$lambda$12;
                allBotsObservable$lambda$12 = AiBotsManager.getAllBotsObservable$lambda$12(Function1.this, obj);
                return allBotsObservable$lambda$12;
            }
        });
        final AiBotsManager$getAllBotsObservable$2 aiBotsManager$getAllBotsObservable$2 = new AiBotsManager$getAllBotsObservable$2(this, language);
        Observable map2 = map.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda45
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List allBotsObservable$lambda$13;
                allBotsObservable$lambda$13 = AiBotsManager.getAllBotsObservable$lambda$13(Function1.this, obj);
                return allBotsObservable$lambda$13;
            }
        });
        final AiBotsManager$getAllBotsObservable$3 aiBotsManager$getAllBotsObservable$3 = AiBotsManager$getAllBotsObservable$3.INSTANCE;
        Observable<List<ShopItem>> map3 = map2.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda38
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List allBotsObservable$lambda$14;
                allBotsObservable$lambda$14 = AiBotsManager.getAllBotsObservable$lambda$14(Function1.this, obj);
                return allBotsObservable$lambda$14;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map3, "fun getAllBotsObservable…rity, ShopItem::title)) }");
        return map3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllBotsObservable$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllBotsObservable$lambda$13(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllBotsObservable$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    public final Observable<List<ShopItem>> getAllBotsObservable(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<BotsDbModel>> botsListObservable = this.botsRepository.getBotsListObservable();
        final AiBotsManager$getAllBotsObservable$4 aiBotsManager$getAllBotsObservable$4 = new AiBotsManager$getAllBotsObservable$4(this, language);
        Observable<R> map = botsListObservable.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda40
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List allBotsObservable$lambda$15;
                allBotsObservable$lambda$15 = AiBotsManager.getAllBotsObservable$lambda$15(Function1.this, obj);
                return allBotsObservable$lambda$15;
            }
        });
        final AiBotsManager$getAllBotsObservable$5 aiBotsManager$getAllBotsObservable$5 = AiBotsManager$getAllBotsObservable$5.INSTANCE;
        Observable<List<ShopItem>> map2 = map.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda39
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List allBotsObservable$lambda$16;
                allBotsObservable$lambda$16 = AiBotsManager.getAllBotsObservable$lambda$16(Function1.this, obj);
                return allBotsObservable$lambda$16;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "fun getAllBotsObservable…rity, ShopItem::title)) }");
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllBotsObservable$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllBotsObservable$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    public final Observable<ShopItem> getSingleBotObservable(String botId, String language) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<BotsDbModel> singleBotObservable = this.botsRepository.getSingleBotObservable(botId);
        final AiBotsManager$getSingleBotObservable$1 aiBotsManager$getSingleBotObservable$1 = new AiBotsManager$getSingleBotObservable$1(this, language);
        Observable map = singleBotObservable.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda42
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ShopItem singleBotObservable$lambda$17;
                singleBotObservable$lambda$17 = AiBotsManager.getSingleBotObservable$lambda$17(Function1.this, obj);
                return singleBotObservable$lambda$17;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "fun getSingleBotObservab…ge)\n                    }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShopItem getSingleBotObservable$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ShopItem) tmp0.invoke(obj);
    }

    public final Observable<List<SmartBotCategory>> getAvailableCategories(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<BotsCategoryDbModel>> allCategories = this.botsRepository.getAllCategories();
        final AiBotsManager$getAvailableCategories$1 aiBotsManager$getAvailableCategories$1 = new AiBotsManager$getAvailableCategories$1(this, language);
        Observable<R> map = allCategories.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda37
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List availableCategories$lambda$18;
                availableCategories$lambda$18 = AiBotsManager.getAvailableCategories$lambda$18(Function1.this, obj);
                return availableCategories$lambda$18;
            }
        });
        final AiBotsManager$getAvailableCategories$2 aiBotsManager$getAvailableCategories$2 = AiBotsManager$getAvailableCategories$2.INSTANCE;
        Observable<List<SmartBotCategory>> map2 = map.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda44
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List availableCategories$lambda$19;
                availableCategories$lambda$19 = AiBotsManager.getAvailableCategories$lambda$19(Function1.this, obj);
                return availableCategories$lambda$19;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "fun getAvailableCategori…cending { it.priority } }");
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAvailableCategories$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAvailableCategories$lambda$19(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    public final Observable<List<SmartBotCategory>> getCategories(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Single<QuerySnapshot> observeOn = this.botsRepository.getCategoriesInfo().subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        final AiBotsManager$getCategories$1 aiBotsManager$getCategories$1 = new AiBotsManager$getCategories$1(this);
        Observable observable = observeOn.map(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda41
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                QuerySnapshot categories$lambda$20;
                categories$lambda$20 = AiBotsManager.getCategories$lambda$20(Function1.this, obj);
                return categories$lambda$20;
            }
        }).toObservable();
        final AiBotsManager$getCategories$2 aiBotsManager$getCategories$2 = new AiBotsManager$getCategories$2(this, language);
        Observable<List<SmartBotCategory>> distinctUntilChanged = observable.flatMap(new Function() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda36
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource categories$lambda$21;
                categories$lambda$21 = AiBotsManager.getCategories$lambda$21(Function1.this, obj);
                return categories$lambda$21;
            }
        }).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "fun getCategories(langua…inctUntilChanged()\n\n    }");
        return distinctUntilChanged;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final QuerySnapshot getCategories$lambda$20(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (QuerySnapshot) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getCategories$lambda$21(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchVotes$lambda$23(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void fetchVotes(long j) {
        Completable fetchVotes = this.botsRepository.fetchVotes(j);
        AiBotsManager$$ExternalSyntheticLambda13 aiBotsManager$$ExternalSyntheticLambda13 = AiBotsManager$$ExternalSyntheticLambda13.INSTANCE;
        final AiBotsManager$fetchVotes$2 aiBotsManager$fetchVotes$2 = AiBotsManager$fetchVotes$2.INSTANCE;
        this.disposables.add(fetchVotes.subscribe(aiBotsManager$$ExternalSyntheticLambda13, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda25
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.fetchVotes$lambda$23(Function1.this, obj);
            }
        }));
    }

    public final void listenForRemoteBotUpdates(FirebaseSnapshotCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Observable<QuerySnapshot> observeOn = this.botsRepository.getRemoteBotUpdates().subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        final AiBotsManager$listenForRemoteBotUpdates$1 aiBotsManager$listenForRemoteBotUpdates$1 = new AiBotsManager$listenForRemoteBotUpdates$1(this, callback);
        Consumer<? super QuerySnapshot> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda31
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.listenForRemoteBotUpdates$lambda$25(Function1.this, obj);
            }
        };
        final AiBotsManager$listenForRemoteBotUpdates$2 aiBotsManager$listenForRemoteBotUpdates$2 = AiBotsManager$listenForRemoteBotUpdates$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.listenForRemoteBotUpdates$lambda$26(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listenForRemoteBotUpdates$lambda$25(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listenForRemoteBotUpdates$lambda$26(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void handleChosenBotAnswer(final String botId, final String tag, final int i, final long j) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Completable subscribeOn = Completable.fromAction(new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.handleChosenBotAnswer$lambda$28(botId, this, j, tag, i);
            }
        }).subscribeOn(Schedulers.m674io());
        AiBotsManager$$ExternalSyntheticLambda12 aiBotsManager$$ExternalSyntheticLambda12 = AiBotsManager$$ExternalSyntheticLambda12.INSTANCE;
        final AiBotsManager$handleChosenBotAnswer$3 aiBotsManager$handleChosenBotAnswer$3 = AiBotsManager$handleChosenBotAnswer$3.INSTANCE;
        this.disposables.add(subscribeOn.subscribe(aiBotsManager$$ExternalSyntheticLambda12, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda29
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.handleChosenBotAnswer$lambda$30(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleChosenBotAnswer$lambda$28(String botId, AiBotsManager this$0, long j, String tag, int i) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tag, "$tag");
        if (Intrinsics.areEqual(botId, "holidays")) {
            this$0.answersRepository.saveHolidayGreeting(j, tag);
        } else {
            this$0.answersRepository.increaseResponseCounter(botId, tag, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleChosenBotAnswer$lambda$30(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fetchTags() {
        Single<QuerySnapshot> observeOn = this.botsRepository.getTagsInfo().subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        final AiBotsManager$fetchTags$1 aiBotsManager$fetchTags$1 = new AiBotsManager$fetchTags$1(this);
        Consumer<? super QuerySnapshot> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.fetchTags$lambda$32(Function1.this, obj);
            }
        };
        final AiBotsManager$fetchTags$2 aiBotsManager$fetchTags$2 = AiBotsManager$fetchTags$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.fetchTags$lambda$33(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchTags$lambda$32(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchTags$lambda$33(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fetchCategories() {
        Single<QuerySnapshot> observeOn = this.botsRepository.getCategoriesInfo().subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        final AiBotsManager$fetchCategories$1 aiBotsManager$fetchCategories$1 = new AiBotsManager$fetchCategories$1(this);
        Consumer<? super QuerySnapshot> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda23
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.fetchCategories$lambda$35(Function1.this, obj);
            }
        };
        final AiBotsManager$fetchCategories$2 aiBotsManager$fetchCategories$2 = AiBotsManager$fetchCategories$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda27
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.fetchCategories$lambda$36(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchCategories$lambda$35(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchCategories$lambda$36(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final Completable storeActualPurchases(List<ShopProduct> purchases) {
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        return this.botsRepository.storePurchasesInfo(purchases);
    }

    public final void downloadPurchase(String sku, long j) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Single<BotsDbModel> observeOn = this.botsRepository.getBotBySku(sku).subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        final AiBotsManager$downloadPurchase$1 aiBotsManager$downloadPurchase$1 = new AiBotsManager$downloadPurchase$1(this, j);
        Consumer<? super BotsDbModel> consumer = new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda24
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.downloadPurchase$lambda$38(Function1.this, obj);
            }
        };
        final AiBotsManager$downloadPurchase$2 aiBotsManager$downloadPurchase$2 = AiBotsManager$downloadPurchase$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.downloadPurchase$lambda$39(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void downloadPurchase$lambda$38(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void downloadPurchase$lambda$39(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final Completable updateBotStatus(String botId, BotStatus status) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(status, "status");
        Completable doOnComplete = this.botsRepository.updateBotStatus(botId, status).doOnComplete(new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.updateBotStatus$lambda$41(AiBotsManager.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "botsRepository.updateBot…rebuildActiveBotsList() }");
        return doOnComplete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateBotStatus$lambda$41(AiBotsManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.rebuildActiveBotsList();
    }

    public final void disableBot(final String botId) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Completable observeOn = updateBotStatus(botId, BotStatus.DISABLED).subscribeOn(Schedulers.m674io()).observeOn(AndroidSchedulers.mainThread());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.disableBot$lambda$42(botId);
            }
        };
        final AiBotsManager$disableBot$2 aiBotsManager$disableBot$2 = AiBotsManager$disableBot$2.INSTANCE;
        this.disposables.add(observeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda35
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.disableBot$lambda$43(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disableBot$lambda$42(String botId) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Log.d("BotsDownloader", botId + " disabled");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disableBot$lambda$43(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void startBotDownloading(final String botId, final String title, final String downloadLink, long j) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(downloadLink, "downloadLink");
        Log.d("BotsDownloader", "Download " + botId + " started");
        StringBuilder sb = new StringBuilder();
        sb.append("Download path ");
        sb.append(this.downloadsPath);
        Log.d("BotsDownloader", sb.toString());
        Completable updateBotStatus = updateBotStatus(botId, BotStatus.DOWNLOADING);
        final AiBotsManager$startBotDownloading$1 aiBotsManager$startBotDownloading$1 = new AiBotsManager$startBotDownloading$1(this, botId, j);
        Completable observeOn = updateBotStatus.doOnSubscribe(new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda33
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.startBotDownloading$lambda$45(Function1.this, obj);
            }
        }).subscribeOn(Schedulers.m674io()).observeOn(Schedulers.m674io());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.startBotDownloading$lambda$46(AiBotsManager.this, botId, title, downloadLink);
            }
        };
        final AiBotsManager$startBotDownloading$3 aiBotsManager$startBotDownloading$3 = AiBotsManager$startBotDownloading$3.INSTANCE;
        this.disposables.add(observeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda26
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.startBotDownloading$lambda$47(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startBotDownloading$lambda$45(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startBotDownloading$lambda$46(AiBotsManager this$0, String botId, String title, String downloadLink) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(title, "$title");
        Intrinsics.checkNotNullParameter(downloadLink, "$downloadLink");
        this$0.launchDownloadSession(botId, title, downloadLink);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startBotDownloading$lambda$47(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void launchDownloadSession(String str, String str2, String str3) {
        File file = new File(this.downloadsPath, str);
        this.downloads.put(Long.valueOf(this.downloadManager.enqueue(new DownloadManager.Request(Uri.parse(str3)).setTitle(str2).setDescription("Downloading...").setNotificationVisibility(0).setDestinationUri(Uri.fromFile(file)).setAllowedOverMetered(true).setAllowedOverRoaming(true))), new DownloadSession(file, str));
    }

    public final void handleDownloadCompletion(final long j) {
        Completable complete;
        String botId;
        DownloadSession downloadSession = this.downloads.get(Long.valueOf(j));
        final File file = downloadSession != null ? downloadSession.getFile() : null;
        Log.d("BotsDownloader", "Download " + j + " completed");
        StringBuilder sb = new StringBuilder();
        sb.append("File downloaded to ");
        sb.append(file != null ? file.getAbsolutePath() : null);
        Log.d("BotsDownloader", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("File exists? ");
        sb2.append(file != null ? Boolean.valueOf(file.exists()) : null);
        Log.d("BotsDownloader", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("File last modified: ");
        sb3.append(file != null ? Long.valueOf(file.lastModified()) : null);
        Log.d("BotsDownloader", sb3.toString());
        Log.d("BotsDownloader", "Unzip to " + this.destinationPath);
        String absolutePath = file != null ? file.getAbsolutePath() : null;
        String absolutePath2 = this.destinationPath.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "destinationPath.absolutePath");
        Completable subscribeOn = unzip(absolutePath, absolutePath2).subscribeOn(Schedulers.m674io());
        DownloadSession downloadSession2 = this.downloads.get(Long.valueOf(j));
        if (downloadSession2 == null || (botId = downloadSession2.getBotId()) == null || (complete = this.botsRepository.updateRemoteBotHash(botId)) == null) {
            complete = Completable.complete();
            Intrinsics.checkNotNullExpressionValue(complete, "complete()");
        }
        Completable observeOn = subscribeOn.andThen(complete).observeOn(AndroidSchedulers.mainThread());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.handleDownloadCompletion$lambda$50(AiBotsManager.this, j, file);
            }
        };
        final AiBotsManager$handleDownloadCompletion$3 aiBotsManager$handleDownloadCompletion$3 = AiBotsManager$handleDownloadCompletion$3.INSTANCE;
        this.disposables.add(observeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.handleDownloadCompletion$lambda$51(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleDownloadCompletion$lambda$50(AiBotsManager this$0, long j, File file) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Log.d("BotsDownloader", "Unzip completed, deletion started");
        this$0.downloads.remove(Long.valueOf(j));
        this$0.cleanupData(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleDownloadCompletion$lambda$51(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void cleanupData(final File file) {
        if (file == null) {
            return;
        }
        final String botId = file.getName();
        Intrinsics.checkNotNullExpressionValue(botId, "botId");
        Completable observeOn = updateBotStatus(botId, BotStatus.ENABLED).doOnComplete(new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Action
            public final void run() {
                file.delete();
            }
        }).subscribeOn(Schedulers.m674io()).observeOn(AndroidSchedulers.mainThread());
        Action action = new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.cleanupData$lambda$54(botId);
            }
        };
        final AiBotsManager$cleanupData$3 aiBotsManager$cleanupData$3 = AiBotsManager$cleanupData$3.INSTANCE;
        this.disposables.add(observeOn.subscribe(action, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda28
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.cleanupData$lambda$55(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanupData$lambda$54(String str) {
        Log.d("BotsDownloader", str + " installed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanupData$lambda$55(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final Completable unzip(final String str, final String str2) {
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) {
                AiBotsManager.unzip$lambda$57(str, str2, completableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unzip$lambda$57(String str, String destination, CompletableEmitter emitter) {
        Intrinsics.checkNotNullParameter(destination, "$destination");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        try {
            ZipFile zipFile = new ZipFile(str);
            if (zipFile.getFile().exists()) {
                zipFile.extractAll(destination);
            }
            emitter.onComplete();
        } catch (Exception e) {
            emitter.onError(e);
        }
    }

    private final void cleanDownloads(final Function0<Unit> function0) {
        Iterator<Map.Entry<Long, DownloadSession>> it = this.downloads.entrySet().iterator();
        while (it.hasNext()) {
            this.downloadManager.remove(it.next().getKey().longValue());
        }
        Completable doFinally = this.botsRepository.resetDownloads().subscribeOn(Schedulers.m674io()).observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.cleanDownloads$lambda$59(Function0.this);
            }
        });
        AiBotsManager$$ExternalSyntheticLambda11 aiBotsManager$$ExternalSyntheticLambda11 = AiBotsManager$$ExternalSyntheticLambda11.INSTANCE;
        final AiBotsManager$cleanDownloads$4 aiBotsManager$cleanDownloads$4 = AiBotsManager$cleanDownloads$4.INSTANCE;
        this.disposables.add(doFinally.subscribe(aiBotsManager$$ExternalSyntheticLambda11, new Consumer() { // from class: com.iMe.bots.usecase.AiBotsManager$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.cleanDownloads$lambda$61(Function1.this, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanDownloads$lambda$59(Function0 finallyCallback) {
        Intrinsics.checkNotNullParameter(finallyCallback, "$finallyCallback");
        finallyCallback.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cleanDownloads$lambda$61(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void cancel() {
        cleanDownloads(new AiBotsManager$cancel$1(this));
    }
}
