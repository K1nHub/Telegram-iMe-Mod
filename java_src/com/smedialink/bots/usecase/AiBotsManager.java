package com.smedialink.bots.usecase;

import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import com.smedialink.bots.data.SmartReplier;
import com.smedialink.bots.data.mapper.BotCategoryMapper;
import com.smedialink.bots.data.mapper.ResponseMapper;
import com.smedialink.bots.data.mapper.ShopItemMapper;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.model.database.BotsDbModel;
import com.smedialink.bots.data.model.database.TagDbModel;
import com.smedialink.bots.data.repository.BotsRepository;
import com.smedialink.bots.data.repository.UserAnswersRepository;
import com.smedialink.bots.domain.AigramBot;
import com.smedialink.bots.domain.Replier;
import com.smedialink.bots.domain.model.BotLanguage;
import com.smedialink.bots.domain.model.DownloadSession;
import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.bots.domain.model.ShopProduct;
import com.smedialink.bots.domain.model.SmartBotCategory;
import com.smedialink.bots.domain.model.SmartBotResponse;
import com.smedialink.bots.usecase.AiBotsManager;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
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
    /* renamed from: fetchVotes$lambda-24  reason: not valid java name */
    public static final void m1201fetchVotes$lambda24() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleChosenBotAnswer$lambda-31  reason: not valid java name */
    public static final void m1214handleChosenBotAnswer$lambda31() {
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
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
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

    public final Map<Long, DownloadSession> getDownloads() {
        return this.downloads;
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

    private final void rebuildActiveBotsList() {
        this.disposables.add(this.botsRepository.getActiveBotsList().subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1220rebuildActiveBotsList$lambda0(AiBotsManager.this, (List) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda21.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rebuildActiveBotsList$lambda-0  reason: not valid java name */
    public static final void m1220rebuildActiveBotsList$lambda0(AiBotsManager this$0, List bots) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bots, "bots");
        this$0.getActiveBots().clear();
        this$0.getActiveBots().addAll(bots);
        BotsListChangedCallback botDisableCallback = this$0.getBotDisableCallback();
        if (botDisableCallback == null) {
            return;
        }
        botDisableCallback.onSuccess();
    }

    public final void sendAppInstalledEvent(final long j, final AppInstalledCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.disposables.add(this.botsRepository.sendAppInstallEvent(j).subscribeOn(Schedulers.m694io()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1222sendAppInstalledEvent$lambda3(AiBotsManager.AppInstalledCallback.this, j);
            }
        }, AiBotsManager$$ExternalSyntheticLambda23.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendAppInstalledEvent$lambda-3  reason: not valid java name */
    public static final void m1222sendAppInstalledEvent$lambda3(AppInstalledCallback callback, long j) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.onSuccess();
        Log.d("Remote event", Intrinsics.stringPlus("App installed event, user id ", Long.valueOf(j)));
    }

    private final void sendBotInstalledEvent(final String str, final long j) {
        this.disposables.add(this.botsRepository.sendBotInstallEvent(str, j).subscribeOn(Schedulers.m694io()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1224sendBotInstalledEvent$lambda6(str, j);
            }
        }, AiBotsManager$$ExternalSyntheticLambda30.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotInstalledEvent$lambda-6  reason: not valid java name */
    public static final void m1224sendBotInstalledEvent$lambda6(String botId, long j) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Log.d("Remote event", "Bot " + botId + " installed event, user id " + j);
    }

    public final void sendBotRatingEvent(final String botId, final long j, final int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        this.disposables.add(this.botsRepository.sendBotRating(botId, j, i).subscribeOn(Schedulers.m694io()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1227sendBotRatingEvent$lambda9(botId, i, j, (Integer) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda33.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotRatingEvent$lambda-9  reason: not valid java name */
    public static final void m1227sendBotRatingEvent$lambda9(String botId, int i, long j, Integer num) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Log.d("Remote event", "Bot " + botId + " rating " + i + " event, user id " + j);
    }

    public final Observable<List<ShopItem>> getAllBotsObservable(final BotLanguage botLanguage, final String language) {
        Intrinsics.checkNotNullParameter(botLanguage, "botLanguage");
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<ShopItem>> map = this.botsRepository.getBotsListObservable().map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda36
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1203getAllBotsObservable$lambda13;
                m1203getAllBotsObservable$lambda13 = AiBotsManager.m1203getAllBotsObservable$lambda13(BotLanguage.this, (List) obj);
                return m1203getAllBotsObservable$lambda13;
            }
        }).map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda40
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1204getAllBotsObservable$lambda14;
                m1204getAllBotsObservable$lambda14 = AiBotsManager.m1204getAllBotsObservable$lambda14(AiBotsManager.this, language, (List) obj);
                return m1204getAllBotsObservable$lambda14;
            }
        }).map(AiBotsManager$$ExternalSyntheticLambda45.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "botsRepository.getBotsLi…rity, ShopItem::title)) }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAllBotsObservable$lambda-14  reason: not valid java name */
    public static final List m1204getAllBotsObservable$lambda14(AiBotsManager this$0, String language, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(language, "$language");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.shopItemMapper.mapList(it, language, this$0.getBotsRepository().getTags());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAllBotsObservable$lambda-15  reason: not valid java name */
    public static final List m1205getAllBotsObservable$lambda15(List list) {
        Comparator compareBy;
        List sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(AiBotsManager$getAllBotsObservable$3$1.INSTANCE, AiBotsManager$getAllBotsObservable$3$2.INSTANCE);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, compareBy);
        return sortedWith;
    }

    public final Observable<List<ShopItem>> getAllBotsObservable(final String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<ShopItem>> map = this.botsRepository.getBotsListObservable().map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda41
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1206getAllBotsObservable$lambda16;
                m1206getAllBotsObservable$lambda16 = AiBotsManager.m1206getAllBotsObservable$lambda16(AiBotsManager.this, language, (List) obj);
                return m1206getAllBotsObservable$lambda16;
            }
        }).map(AiBotsManager$$ExternalSyntheticLambda43.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "botsRepository\n         …rity, ShopItem::title)) }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAllBotsObservable$lambda-16  reason: not valid java name */
    public static final List m1206getAllBotsObservable$lambda16(AiBotsManager this$0, String language, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(language, "$language");
        Intrinsics.checkNotNullParameter(it, "it");
        if (this$0.getCurrentTags().isEmpty()) {
            this$0.setCurrentTags(this$0.getBotsRepository().getTags());
        }
        return this$0.shopItemMapper.mapList(it, language, this$0.getCurrentTags());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAllBotsObservable$lambda-17  reason: not valid java name */
    public static final List m1207getAllBotsObservable$lambda17(List list) {
        Comparator compareBy;
        List sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(AiBotsManager$getAllBotsObservable$5$1.INSTANCE, AiBotsManager$getAllBotsObservable$5$2.INSTANCE);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, compareBy);
        return sortedWith;
    }

    public final Observable<ShopItem> getSingleBotObservable(String botId, final String language) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(language, "language");
        Observable map = this.botsRepository.getSingleBotObservable(botId).map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda39
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ShopItem m1212getSingleBotObservable$lambda18;
                m1212getSingleBotObservable$lambda18 = AiBotsManager.m1212getSingleBotObservable$lambda18(AiBotsManager.this, language, (BotsDbModel) obj);
                return m1212getSingleBotObservable$lambda18;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "botsRepository\n         …ge)\n                    }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getSingleBotObservable$lambda-18  reason: not valid java name */
    public static final ShopItem m1212getSingleBotObservable$lambda18(AiBotsManager this$0, String language, BotsDbModel it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(language, "$language");
        Intrinsics.checkNotNullParameter(it, "it");
        if (this$0.getCurrentTags().isEmpty()) {
            this$0.setCurrentTags(this$0.getBotsRepository().getTags());
        }
        return this$0.shopItemMapper.mapItem(it, this$0.getCurrentTags(), language);
    }

    public final Observable<List<SmartBotCategory>> getAvailableCategories(final String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<SmartBotCategory>> map = this.botsRepository.getAllCategories().map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda42
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1208getAvailableCategories$lambda19;
                m1208getAvailableCategories$lambda19 = AiBotsManager.m1208getAvailableCategories$lambda19(AiBotsManager.this, language, (List) obj);
                return m1208getAvailableCategories$lambda19;
            }
        }).map(AiBotsManager$$ExternalSyntheticLambda44.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "botsRepository\n         …cending { it.priority } }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableCategories$lambda-19  reason: not valid java name */
    public static final List m1208getAvailableCategories$lambda19(AiBotsManager this$0, String language, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(language, "$language");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.categoriesMapper.mapList(it, language);
    }

    public final Observable<List<SmartBotCategory>> getCategories(final String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Observable<List<SmartBotCategory>> distinctUntilChanged = this.botsRepository.getCategoriesInfo().subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).map(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda37
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                QuerySnapshot m1210getCategories$lambda22;
                m1210getCategories$lambda22 = AiBotsManager.m1210getCategories$lambda22(AiBotsManager.this, (QuerySnapshot) obj);
                return m1210getCategories$lambda22;
            }
        }).toObservable().flatMap(new Function() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda38
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1211getCategories$lambda23;
                m1211getCategories$lambda23 = AiBotsManager.m1211getCategories$lambda23(AiBotsManager.this, language, (QuerySnapshot) obj);
                return m1211getCategories$lambda23;
            }
        }).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "botsRepository.getCatego…  .distinctUntilChanged()");
        return distinctUntilChanged;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategories$lambda-22  reason: not valid java name */
    public static final QuerySnapshot m1210getCategories$lambda22(AiBotsManager this$0, QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this$0.getBotsRepository().storeCategoryDocuments(snapshot);
        }
        return snapshot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategories$lambda-23  reason: not valid java name */
    public static final ObservableSource m1211getCategories$lambda23(AiBotsManager this$0, String language, QuerySnapshot it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(language, "$language");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.getAvailableCategories(language);
    }

    public final void fetchVotes(long j) {
        this.disposables.add(this.botsRepository.fetchVotes(j).subscribe(AiBotsManager$$ExternalSyntheticLambda13.INSTANCE, AiBotsManager$$ExternalSyntheticLambda28.INSTANCE));
    }

    public final void listenForRemoteBotUpdates(final FirebaseSnapshotCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.disposables.add(this.botsRepository.getRemoteBotUpdates().subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1218listenForRemoteBotUpdates$lambda27(AiBotsManager.this, callback, (QuerySnapshot) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda31.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listenForRemoteBotUpdates$lambda-27  reason: not valid java name */
    public static final void m1218listenForRemoteBotUpdates$lambda27(AiBotsManager this$0, FirebaseSnapshotCallback callback, QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this$0.getBotsRepository().storeBotDocuments(snapshot);
            callback.onSuccess();
            this$0.fetchTags();
            this$0.rebuildActiveBotsList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listenForRemoteBotUpdates$lambda-28  reason: not valid java name */
    public static final void m1219listenForRemoteBotUpdates$lambda28(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.printStackTrace();
    }

    public final void handleChosenBotAnswer(final String botId, final String tag, final int i, final long j) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.disposables.add(Completable.fromAction(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1213handleChosenBotAnswer$lambda30(botId, this, j, tag, i);
            }
        }).subscribeOn(Schedulers.m694io()).subscribe(AiBotsManager$$ExternalSyntheticLambda12.INSTANCE, AiBotsManager$$ExternalSyntheticLambda22.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleChosenBotAnswer$lambda-30  reason: not valid java name */
    public static final void m1213handleChosenBotAnswer$lambda30(String botId, AiBotsManager this$0, long j, String tag, int i) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tag, "$tag");
        if (Intrinsics.areEqual(botId, "holidays")) {
            this$0.answersRepository.saveHolidayGreeting(j, tag);
        } else {
            this$0.answersRepository.increaseResponseCounter(botId, tag, i);
        }
    }

    private final void fetchTags() {
        this.disposables.add(this.botsRepository.getTagsInfo().subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1199fetchTags$lambda34(AiBotsManager.this, (QuerySnapshot) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda26.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fetchTags$lambda-34  reason: not valid java name */
    public static final void m1199fetchTags$lambda34(AiBotsManager this$0, QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this$0.getBotsRepository().storeTagDocuments(snapshot);
            this$0.fetchCategories();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fetchTags$lambda-35  reason: not valid java name */
    public static final void m1200fetchTags$lambda35(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.printStackTrace();
    }

    private final void fetchCategories() {
        this.disposables.add(this.botsRepository.getCategoriesInfo().subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1197fetchCategories$lambda37(AiBotsManager.this, (QuerySnapshot) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda35.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fetchCategories$lambda-37  reason: not valid java name */
    public static final void m1197fetchCategories$lambda37(AiBotsManager this$0, QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this$0.getBotsRepository().storeCategoryDocuments(snapshot);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fetchCategories$lambda-38  reason: not valid java name */
    public static final void m1198fetchCategories$lambda38(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.printStackTrace();
    }

    public final Completable storeActualPurchases(List<ShopProduct> purchases) {
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        return this.botsRepository.storePurchasesInfo(purchases);
    }

    public final void downloadPurchase(String sku, final long j) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        this.disposables.add(this.botsRepository.getBotBySku(sku).subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).subscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1195downloadPurchase$lambda40(AiBotsManager.this, j, (BotsDbModel) obj);
            }
        }, AiBotsManager$$ExternalSyntheticLambda34.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: downloadPurchase$lambda-40  reason: not valid java name */
    public static final void m1195downloadPurchase$lambda40(AiBotsManager this$0, long j, BotsDbModel botsDbModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startBotDownloading(botsDbModel.getId(), botsDbModel.getTitle(), botsDbModel.getFile(), j);
    }

    public final Completable updateBotStatus(String botId, BotStatus status) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(status, "status");
        Completable doOnComplete = this.botsRepository.updateBotStatus(botId, status).doOnComplete(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1232updateBotStatus$lambda43(AiBotsManager.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "botsRepository.updateBot…rebuildActiveBotsList() }");
        return doOnComplete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateBotStatus$lambda-43  reason: not valid java name */
    public static final void m1232updateBotStatus$lambda43(AiBotsManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.rebuildActiveBotsList();
    }

    public final void disableBot(final String botId) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        this.disposables.add(updateBotStatus(botId, BotStatus.DISABLED).subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1193disableBot$lambda44(botId);
            }
        }, AiBotsManager$$ExternalSyntheticLambda27.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: disableBot$lambda-44  reason: not valid java name */
    public static final void m1193disableBot$lambda44(String botId) {
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Log.d("BotsDownloader", Intrinsics.stringPlus(botId, " disabled"));
    }

    public final void startBotDownloading(final String botId, final String title, final String downloadLink, final long j) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(downloadLink, "downloadLink");
        Log.d("BotsDownloader", "Download " + botId + " started");
        Log.d("BotsDownloader", Intrinsics.stringPlus("Download path ", this.downloadsPath));
        this.disposables.add(updateBotStatus(botId, BotStatus.DOWNLOADING).doOnSubscribe(new Consumer() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AiBotsManager.m1228startBotDownloading$lambda47(AiBotsManager.this, botId, j, (Disposable) obj);
            }
        }).subscribeOn(Schedulers.m694io()).observeOn(Schedulers.m694io()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1229startBotDownloading$lambda48(AiBotsManager.this, botId, title, downloadLink);
            }
        }, AiBotsManager$$ExternalSyntheticLambda24.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startBotDownloading$lambda-47  reason: not valid java name */
    public static final void m1228startBotDownloading$lambda47(AiBotsManager this$0, String botId, long j, Disposable disposable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        this$0.sendBotInstalledEvent(botId, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startBotDownloading$lambda-48  reason: not valid java name */
    public static final void m1229startBotDownloading$lambda48(AiBotsManager this$0, String botId, String title, String downloadLink) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(title, "$title");
        Intrinsics.checkNotNullParameter(downloadLink, "$downloadLink");
        this$0.launchDownloadSession(botId, title, downloadLink);
    }

    private final void launchDownloadSession(String str, String str2, String str3) {
        File file = new File(this.downloadsPath, str);
        this.downloads.put(Long.valueOf(this.downloadManager.enqueue(new DownloadManager.Request(Uri.parse(str3)).setTitle(str2).setDescription("Downloading...").setNotificationVisibility(0).setDestinationUri(Uri.fromFile(file)).setAllowedOverMetered(true).setAllowedOverRoaming(true))), new DownloadSession(file, str));
    }

    public final void handleDownloadCompletion(final long j) {
        String botId;
        DownloadSession downloadSession = this.downloads.get(Long.valueOf(j));
        Completable completable = null;
        final File file = downloadSession == null ? null : downloadSession.getFile();
        Log.d("BotsDownloader", "Download " + j + " completed");
        Log.d("BotsDownloader", Intrinsics.stringPlus("File downloaded to ", file == null ? null : file.getAbsolutePath()));
        Log.d("BotsDownloader", Intrinsics.stringPlus("File exists? ", file == null ? null : Boolean.valueOf(file.exists())));
        Log.d("BotsDownloader", Intrinsics.stringPlus("File last modified: ", file == null ? null : Long.valueOf(file.lastModified())));
        Log.d("BotsDownloader", Intrinsics.stringPlus("Unzip to ", this.destinationPath));
        String absolutePath = file == null ? null : file.getAbsolutePath();
        String absolutePath2 = this.destinationPath.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "destinationPath.absolutePath");
        Completable subscribeOn = unzip(absolutePath, absolutePath2).subscribeOn(Schedulers.m694io());
        DownloadSession downloadSession2 = this.downloads.get(Long.valueOf(j));
        if (downloadSession2 != null && (botId = downloadSession2.getBotId()) != null) {
            completable = getBotsRepository().updateRemoteBotHash(botId);
        }
        if (completable == null) {
            completable = Completable.complete();
            Intrinsics.checkNotNullExpressionValue(completable, "complete()");
        }
        this.disposables.add(subscribeOn.andThen(completable).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1216handleDownloadCompletion$lambda52(AiBotsManager.this, j, file);
            }
        }, AiBotsManager$$ExternalSyntheticLambda25.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleDownloadCompletion$lambda-52  reason: not valid java name */
    public static final void m1216handleDownloadCompletion$lambda52(AiBotsManager this$0, long j, File file) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Log.d("BotsDownloader", "Unzip completed, deletion started");
        this$0.getDownloads().remove(Long.valueOf(j));
        this$0.cleanupData(file);
    }

    private final void cleanupData(final File file) {
        if (file == null) {
            return;
        }
        final String botId = file.getName();
        Intrinsics.checkNotNullExpressionValue(botId, "botId");
        this.disposables.add(updateBotStatus(botId, BotStatus.ENABLED).doOnComplete(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Action
            public final void run() {
                file.delete();
            }
        }).subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1191cleanupData$lambda56(botId);
            }
        }, AiBotsManager$$ExternalSyntheticLambda32.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cleanupData$lambda-56  reason: not valid java name */
    public static final void m1191cleanupData$lambda56(String str) {
        Log.d("BotsDownloader", Intrinsics.stringPlus(str, " installed"));
    }

    private final Completable unzip(final String str, final String str2) {
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) {
                AiBotsManager.m1231unzip$lambda59(str, str2, completableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: unzip$lambda-59  reason: not valid java name */
    public static final void m1231unzip$lambda59(String str, String destination, CompletableEmitter emitter) {
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
        this.disposables.add(this.botsRepository.resetDownloads().subscribeOn(Schedulers.m694io()).observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.smedialink.bots.usecase.AiBotsManager$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Action
            public final void run() {
                AiBotsManager.m1187cleanDownloads$lambda61(Function0.this);
            }
        }).subscribe(AiBotsManager$$ExternalSyntheticLambda11.INSTANCE, AiBotsManager$$ExternalSyntheticLambda29.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cleanDownloads$lambda-61  reason: not valid java name */
    public static final void m1187cleanDownloads$lambda61(Function0 finallyCallback) {
        Intrinsics.checkNotNullParameter(finallyCallback, "$finallyCallback");
        finallyCallback.invoke();
    }

    public final void cancel() {
        cleanDownloads(new AiBotsManager$cancel$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAllBotsObservable$lambda-13  reason: not valid java name */
    public static final List m1203getAllBotsObservable$lambda13(BotLanguage botLanguage, List it) {
        Intrinsics.checkNotNullParameter(botLanguage, "$botLanguage");
        Intrinsics.checkNotNullParameter(it, "it");
        ArrayList arrayList = new ArrayList();
        for (Object obj : it) {
            if (((BotsDbModel) obj).getLang() == botLanguage) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableCategories$lambda-21  reason: not valid java name */
    public static final List m1209getAvailableCategories$lambda21(List list) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.smedialink.bots.usecase.AiBotsManager$getAvailableCategories$lambda-21$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SmartBotCategory) t2).getPriority()), Integer.valueOf(((SmartBotCategory) t).getPriority()));
                return compareValues;
            }
        });
        return sortedWith;
    }
}
