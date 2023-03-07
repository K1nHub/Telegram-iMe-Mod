package com.smedialink.bots.data.repository;

import android.content.Context;
import android.content.res.AssetManager;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.MetadataChanges;
import com.google.firebase.firestore.QuerySnapshot;
import com.smedialink.bots.BotConstants;
import com.smedialink.bots.data.database.BotsCategoryDao;
import com.smedialink.bots.data.database.BotsDao;
import com.smedialink.bots.data.database.BotsDatabase;
import com.smedialink.bots.data.database.BotsTagDao;
import com.smedialink.bots.data.factory.JsonResourceFactory;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.model.BotType;
import com.smedialink.bots.data.model.bot.HolidaysBot;
import com.smedialink.bots.data.model.bot.NeuroBot;
import com.smedialink.bots.data.model.database.BotsCategoryDbModel;
import com.smedialink.bots.data.model.database.BotsDbModel;
import com.smedialink.bots.data.model.database.TagDbModel;
import com.smedialink.bots.data.model.network.Response;
import com.smedialink.bots.data.network.SmartBotsApi;
import com.smedialink.bots.domain.AigramBot;
import com.smedialink.bots.domain.ResourceFactory;
import com.smedialink.bots.domain.exception.EmptySnapshotException;
import com.smedialink.bots.domain.model.BotLanguage;
import com.smedialink.bots.domain.model.ShopProduct;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.SingleSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository {
    public static final Companion Companion = new Companion(null);
    private final SmartBotsApi botsApi;
    private final BotsDao botsDao;
    private final BotsDatabase botsDatabase;
    private final BotsCategoryDao categoriesDao;
    private final ResourceFactory factory;
    private final FirebaseFirestore remoteDatabase;
    private final BotsTagDao tagsDao;

    public BotsRepository(Context context, File botsPath) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(botsPath, "botsPath");
        FirebaseFirestore firebaseFirestore = FirebaseFirestore.getInstance();
        Intrinsics.checkNotNullExpressionValue(firebaseFirestore, "getInstance()");
        this.remoteDatabase = firebaseFirestore;
        this.botsApi = SmartBotsApi.Companion.getInstance();
        AssetManager assets = context.getAssets();
        Intrinsics.checkNotNullExpressionValue(assets, "context.assets");
        this.factory = new JsonResourceFactory(assets, botsPath);
        BotsDatabase.Companion companion = BotsDatabase.Companion;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        BotsDatabase companion2 = companion.getInstance(applicationContext);
        this.botsDatabase = companion2;
        this.botsDao = companion2.botsDao();
        this.tagsDao = companion2.tagsDao();
        this.categoriesDao = companion2.categoryDao();
    }

    /* compiled from: BotsRepository.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<BotsDbModel> initialBotsList() {
            int collectionSizeOrDefault;
            boolean contains$default;
            List<String> predefinedBots = BotConstants.INSTANCE.getPredefinedBots();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(predefinedBots, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str : predefinedBots) {
                String str2 = BotConstants.INSTANCE.getHashes().get(str);
                if (str2 == null) {
                    str2 = "";
                }
                String str3 = str2;
                BotStatus botStatus = BotStatus.ENABLED;
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "_eng", false, 2, (Object) null);
                arrayList.add(new BotsDbModel(str, null, contains$default ? BotLanguage.EN : BotLanguage.RU, null, null, null, null, null, null, 0L, 0L, 0L, BitmapDescriptorFactory.HUE_RED, 0, 1, 1, 0, null, null, str3, 0L, 0L, null, null, null, BotType.Companion.resolveByName(str), botStatus, 32980986, null));
            }
            return arrayList;
        }
    }

    public final Single<List<String>> getSkus() {
        Single<List<String>> create = Single.create(new SingleOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda7
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                BotsRepository.m1159getSkus$lambda1(BotsRepository.this, singleEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …nError(e)\n        }\n    }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getSkus$lambda-1  reason: not valid java name */
    public static final void m1159getSkus$lambda1(BotsRepository this$0, SingleEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        try {
            List<BotsDbModel> all = this$0.botsDao.getAll();
            ArrayList arrayList = new ArrayList();
            for (BotsDbModel botsDbModel : all) {
                String sku = botsDbModel.getSku();
                if (sku != null) {
                    arrayList.add(sku);
                }
            }
            emitter.onSuccess(arrayList);
        } catch (Exception e) {
            emitter.onError(e);
        }
    }

    public final Completable sendAppInstallEvent(long j) {
        Completable flatMapCompletable = this.botsApi.appInstall("telegram_client", 1, j).flatMapCompletable(BotsRepository$$ExternalSyntheticLambda22.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(flatMapCompletable, "botsApi.appInstall(\n    …          }\n            }");
        return flatMapCompletable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendAppInstallEvent$lambda-2  reason: not valid java name */
    public static final CompletableSource m1164sendAppInstallEvent$lambda2(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (Intrinsics.areEqual(response.getStatus(), "ok")) {
            return Completable.complete();
        }
        if (Intrinsics.areEqual(response.getStatus(), "error")) {
            return Completable.error(new Exception(response.getMessage()));
        }
        return Completable.error(new Exception("Unknown error"));
    }

    public final Completable sendBotInstallEvent(String botId, long j) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Completable flatMapCompletable = this.botsApi.botInstall(botId, 1, j).flatMapCompletable(BotsRepository$$ExternalSyntheticLambda21.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(flatMapCompletable, "botsApi.botInstall(botId…  }\n                    }");
        return flatMapCompletable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotInstallEvent$lambda-3  reason: not valid java name */
    public static final CompletableSource m1165sendBotInstallEvent$lambda3(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (Intrinsics.areEqual(response.getStatus(), "ok")) {
            return Completable.complete();
        }
        if (Intrinsics.areEqual(response.getStatus(), "error")) {
            return Completable.error(new Exception(response.getMessage()));
        }
        return Completable.error(new Exception("Unknown error"));
    }

    public final Single<Integer> sendBotRating(final String botId, long j, final int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Single<Integer> onErrorReturn = this.botsApi.voteForBot(botId, i, j).flatMap(new Function() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                SingleSource m1166sendBotRating$lambda4;
                m1166sendBotRating$lambda4 = BotsRepository.m1166sendBotRating$lambda4(i, (Response) obj);
                return m1166sendBotRating$lambda4;
            }
        }).doOnSuccess(new Consumer() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BotsRepository.m1167sendBotRating$lambda5(BotsRepository.this, botId, (Integer) obj);
            }
        }).onErrorReturn(new Function() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Integer m1168sendBotRating$lambda6;
                m1168sendBotRating$lambda6 = BotsRepository.m1168sendBotRating$lambda6(BotsRepository.this, botId, (Throwable) obj);
                return m1168sendBotRating$lambda6;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "botsApi.voteForBot(botId…Dao.getOwnRating(botId) }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotRating$lambda-4  reason: not valid java name */
    public static final SingleSource m1166sendBotRating$lambda4(int i, Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (Intrinsics.areEqual(response.getStatus(), "ok")) {
            return Single.just(Integer.valueOf(i));
        }
        if (Intrinsics.areEqual(response.getStatus(), "error")) {
            return Single.error(new Exception(response.getMessage()));
        }
        return Single.error(new Exception("Unknown error"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotRating$lambda-5  reason: not valid java name */
    public static final void m1167sendBotRating$lambda5(BotsRepository this$0, String botId, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        BotsDao botsDao = this$0.botsDao;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        botsDao.saveOwnRating(botId, it.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendBotRating$lambda-6  reason: not valid java name */
    public static final Integer m1168sendBotRating$lambda6(BotsRepository this$0, String botId, Throwable it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(it, "it");
        return Integer.valueOf(this$0.botsDao.getOwnRating(botId));
    }

    public final Completable fetchVotes(long j) {
        Completable subscribeOn = this.botsApi.getBotsVoting(j).flatMapCompletable(new Function() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                CompletableSource m1152fetchVotes$lambda7;
                m1152fetchVotes$lambda7 = BotsRepository.m1152fetchVotes$lambda7(BotsRepository.this, (Response) obj);
                return m1152fetchVotes$lambda7;
            }
        }).subscribeOn(Schedulers.m694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "botsApi.getBotsVoting(us…scribeOn(Schedulers.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fetchVotes$lambda-7  reason: not valid java name */
    public static final CompletableSource m1152fetchVotes$lambda7(BotsRepository this$0, Response response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        this$0.botsDao.saveRatings(response);
        return Completable.complete();
    }

    public final Single<List<AigramBot>> getActiveBotsList() {
        Single<List<AigramBot>> create = Single.create(new SingleOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda10
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                BotsRepository.m1153getActiveBotsList$lambda13(BotsRepository.this, singleEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getActiveBotsList$lambda-13  reason: not valid java name */
    public static final void m1153getActiveBotsList$lambda13(BotsRepository this$0, SingleEmitter emitter) {
        int collectionSizeOrDefault;
        AigramBot holidaysBot;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        try {
            List<BotsDbModel> all = this$0.botsDao.getAll();
            ArrayList<BotsDbModel> arrayList = new ArrayList();
            Iterator<T> it = all.iterator();
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((BotsDbModel) next).getStatus() != BotStatus.ENABLED) {
                    z = false;
                }
                if (z) {
                    arrayList.add(next);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (BotsDbModel botsDbModel : arrayList) {
                if (botsDbModel.getType() == BotType.NEURO) {
                    holidaysBot = new NeuroBot(botsDbModel.getId(), this$0.factory, botsDbModel.getUseAssets() != 0, botsDbModel.getLang());
                } else {
                    holidaysBot = new HolidaysBot(this$0.factory, botsDbModel.getUseAssets() != 0);
                }
                arrayList2.add(holidaysBot);
            }
            emitter.onSuccess(arrayList2);
        } catch (Exception e) {
            emitter.onError(e);
        }
    }

    public final Observable<List<BotsDbModel>> getBotsListObservable() {
        Observable<List<BotsDbModel>> observable = this.botsDao.streamAll().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "botsDao.streamAll().toObservable()");
        return observable;
    }

    public final Observable<BotsDbModel> getSingleBotObservable(String botId) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Observable<BotsDbModel> observable = this.botsDao.streamBot(botId).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "botsDao.streamBot(botId).toObservable()");
        return observable;
    }

    public final Observable<List<BotsCategoryDbModel>> getAllCategories() {
        Observable<List<BotsCategoryDbModel>> observable = this.categoriesDao.getAll().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "categoriesDao.getAll().toObservable()");
        return observable;
    }

    public final Completable updateBotStatus(final String botId, final BotStatus newStatus) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(newStatus, "newStatus");
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Action
            public final void run() {
                BotsRepository.m1170updateBotStatus$lambda15(BotsRepository.this, botId, newStatus);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction {\n           …pdate(it) }\n            }");
        return fromAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001e, code lost:
        r1 = r1.copy((r50 & 1) != 0 ? r1.f249id : null, (r50 & 2) != 0 ? r1.sku : null, (r50 & 4) != 0 ? r1.lang : null, (r50 & 8) != 0 ? r1.avatarOriginal : null, (r50 & 16) != 0 ? r1.avatarRounded : null, (r50 & 32) != 0 ? r1.titleLocales : null, (r50 & 64) != 0 ? r1.descriptionLocales : null, (r50 & 128) != 0 ? r1.title : null, (r50 & 256) != 0 ? r1.description : null, (r50 & 512) != 0 ? r1.installs : 0, (r50 & 1024) != 0 ? r1.priority : 0, (r50 & 2048) != 0 ? r1.reviews : 0, (r50 & 4096) != 0 ? r1.rating : com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED, (r50 & 8192) != 0 ? r1.ownRating : 0, (r50 & 16384) != 0 ? r1.installLogged : 0, (r50 & 32768) != 0 ? r1.useAssets : 0, (r50 & 65536) != 0 ? r1.botUpdated : 0, (r50 & 131072) != 0 ? r1.tags : null, (r50 & 262144) != 0 ? r1.file : null, (r50 & 524288) != 0 ? r1.hash : null, (r50 & com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? r1.phrases : 0, (r50 & 2097152) != 0 ? r1.themes : 0, (r50 & 4194304) != 0 ? r1.created : null, (8388608 & r50) != 0 ? r1.updated : null, (r50 & org.telegram.tgnet.ConnectionsManager.FileTypePhoto) != 0 ? r1.price : null, (r50 & org.telegram.tgnet.ConnectionsManager.FileTypeVideo) != 0 ? r1.type : null, (r50 & org.telegram.tgnet.ConnectionsManager.FileTypeFile) != 0 ? r1.status : r40);
     */
    /* renamed from: updateBotStatus$lambda-15  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1170updateBotStatus$lambda15(com.smedialink.bots.data.repository.BotsRepository r38, java.lang.String r39, com.smedialink.bots.data.model.BotStatus r40) {
        /*
            r0 = r38
            r1 = r39
            java.lang.String r2 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            java.lang.String r2 = "$botId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            java.lang.String r2 = "$newStatus"
            r3 = r40
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r2)
            com.smedialink.bots.data.database.BotsDao r2 = r0.botsDao
            com.smedialink.bots.data.model.database.BotsDbModel r1 = r2.getById(r1)
            if (r1 != 0) goto L1e
            goto L5d
        L1e:
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r15 = 0
            r17 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            r29 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r36 = 67108863(0x3ffffff, float:1.5046327E-36)
            r37 = 0
            r3 = r1
            r35 = r40
            com.smedialink.bots.data.model.database.BotsDbModel r1 = com.smedialink.bots.data.model.database.BotsDbModel.copy$default(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r15, r17, r19, r20, r21, r22, r23, r24, r25, r26, r27, r29, r31, r32, r33, r34, r35, r36, r37)
            if (r1 != 0) goto L58
            goto L5d
        L58:
            com.smedialink.bots.data.database.BotsDao r0 = r0.botsDao
            r0.update(r1)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.bots.data.repository.BotsRepository.m1170updateBotStatus$lambda15(com.smedialink.bots.data.repository.BotsRepository, java.lang.String, com.smedialink.bots.data.model.BotStatus):void");
    }

    public final Observable<QuerySnapshot> getRemoteBotUpdates() {
        Observable<QuerySnapshot> create = Observable.create(new ObservableOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                BotsRepository.m1157getRemoteBotUpdates$lambda17(BotsRepository.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRemoteBotUpdates$lambda-17  reason: not valid java name */
    public static final void m1157getRemoteBotUpdates$lambda17(BotsRepository this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.remoteDatabase.collection("bots").addSnapshotListener(MetadataChanges.INCLUDE, new EventListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda4
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                BotsRepository.m1158getRemoteBotUpdates$lambda17$lambda16(ObservableEmitter.this, (QuerySnapshot) obj, firebaseFirestoreException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRemoteBotUpdates$lambda-17$lambda-16  reason: not valid java name */
    public static final void m1158getRemoteBotUpdates$lambda17$lambda16(ObservableEmitter emitter, QuerySnapshot querySnapshot, FirebaseFirestoreException firebaseFirestoreException) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (firebaseFirestoreException != null) {
            emitter.onError(firebaseFirestoreException);
        } else if (querySnapshot == null) {
            emitter.onError(new EmptySnapshotException("Collection bots is empty"));
        } else {
            emitter.onNext(querySnapshot);
        }
    }

    public final Completable updateRemoteBotHash(final String botId) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Completable flatMapCompletable = Single.create(new SingleOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda11
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                BotsRepository.m1171updateRemoteBotHash$lambda19(BotsRepository.this, botId, singleEmitter);
            }
        }).observeOn(Schedulers.m694io()).flatMapCompletable(new Function() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                CompletableSource m1173updateRemoteBotHash$lambda21;
                m1173updateRemoteBotHash$lambda21 = BotsRepository.m1173updateRemoteBotHash$lambda21(BotsRepository.this, botId, (String) obj);
                return m1173updateRemoteBotHash$lambda21;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMapCompletable, "create<String> { emitter…  }\n                    }");
        return flatMapCompletable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateRemoteBotHash$lambda-19  reason: not valid java name */
    public static final void m1171updateRemoteBotHash$lambda19(BotsRepository this$0, final String botId, final SingleEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.remoteDatabase.collection("bots").document(botId).addSnapshotListener(MetadataChanges.INCLUDE, new EventListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda5
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                BotsRepository.m1172updateRemoteBotHash$lambda19$lambda18(SingleEmitter.this, botId, (DocumentSnapshot) obj, firebaseFirestoreException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateRemoteBotHash$lambda-19$lambda-18  reason: not valid java name */
    public static final void m1172updateRemoteBotHash$lambda19$lambda18(SingleEmitter emitter, String botId, DocumentSnapshot documentSnapshot, FirebaseFirestoreException firebaseFirestoreException) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        if (firebaseFirestoreException != null) {
            emitter.onError(firebaseFirestoreException);
        } else if (documentSnapshot == null) {
            emitter.onError(new EmptySnapshotException("Document " + botId + " is empty"));
        } else {
            Object obj = documentSnapshot.get("model");
            Map map = obj instanceof Map ? (Map) obj : null;
            String str = (String) (map != null ? map.get("hash") : null);
            if (str == null) {
                str = "";
            }
            emitter.onSuccess(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateRemoteBotHash$lambda-21  reason: not valid java name */
    public static final CompletableSource m1173updateRemoteBotHash$lambda21(final BotsRepository this$0, final String botId, final String remoteHash) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(remoteHash, "remoteHash");
        return Completable.fromAction(new Action() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Action
            public final void run() {
                BotsRepository.m1174updateRemoteBotHash$lambda21$lambda20(BotsRepository.this, botId, remoteHash);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateRemoteBotHash$lambda-21$lambda-20  reason: not valid java name */
    public static final void m1174updateRemoteBotHash$lambda21$lambda20(BotsRepository this$0, String botId, String remoteHash) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(remoteHash, "$remoteHash");
        this$0.botsDao.updateBot(botId, remoteHash, 1, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x018e, code lost:
        if ((r5 == null ? null : r5.getStatus()) == com.smedialink.bots.data.model.BotStatus.UPDATE_AVAILABLE) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x032d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void storeBotDocuments(com.google.firebase.firestore.QuerySnapshot r48) {
        /*
            Method dump skipped, instructions count: 963
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.bots.data.repository.BotsRepository.storeBotDocuments(com.google.firebase.firestore.QuerySnapshot):void");
    }

    public final Single<QuerySnapshot> getTagsInfo() {
        Single<QuerySnapshot> create = Single.create(new SingleOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda9
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                BotsRepository.m1160getTagsInfo$lambda27(BotsRepository.this, singleEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTagsInfo$lambda-27  reason: not valid java name */
    public static final void m1160getTagsInfo$lambda27(BotsRepository this$0, final SingleEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.remoteDatabase.collection("tags").get().addOnFailureListener(new OnFailureListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                BotsRepository.m1161getTagsInfo$lambda27$lambda25(SingleEmitter.this, exc);
            }
        }).addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                BotsRepository.m1162getTagsInfo$lambda27$lambda26(SingleEmitter.this, (QuerySnapshot) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTagsInfo$lambda-27$lambda-25  reason: not valid java name */
    public static final void m1161getTagsInfo$lambda27$lambda25(SingleEmitter emitter, Exception exception) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(exception, "exception");
        emitter.onError(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTagsInfo$lambda-27$lambda-26  reason: not valid java name */
    public static final void m1162getTagsInfo$lambda27$lambda26(SingleEmitter emitter, QuerySnapshot querySnapshot) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (querySnapshot != null) {
            emitter.onSuccess(querySnapshot);
        } else {
            emitter.onError(new EmptySnapshotException("Collection tags is empty"));
        }
    }

    public final void storeTagDocuments(QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        ArrayList arrayList = new ArrayList();
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        for (DocumentSnapshot documentSnapshot : documents) {
            Boolean bool = documentSnapshot.getBoolean("hidden");
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            boolean booleanValue = bool.booleanValue();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Object obj = documentSnapshot.get("locales");
            HashMap hashMap = obj instanceof HashMap ? (HashMap) obj : null;
            String str = "";
            if (hashMap != null) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    Object key = entry.getKey();
                    String str2 = (String) ((HashMap) entry.getValue()).get("title");
                    if (str2 == null) {
                        str2 = "";
                    }
                    linkedHashMap.put(key, str2);
                }
            }
            String id = documentSnapshot.getId();
            Intrinsics.checkNotNullExpressionValue(id, "document.id");
            String string = documentSnapshot.getString("title");
            if (string != null) {
                str = string;
            }
            arrayList.add(new TagDbModel(id, str, booleanValue ? 1 : 0, linkedHashMap));
        }
        this.tagsDao.insertOrReplace(arrayList);
    }

    public final Single<QuerySnapshot> getCategoriesInfo() {
        Single<QuerySnapshot> create = Single.create(new SingleOnSubscribe() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda8
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                BotsRepository.m1154getCategoriesInfo$lambda32(BotsRepository.this, singleEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …          }\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategoriesInfo$lambda-32  reason: not valid java name */
    public static final void m1154getCategoriesInfo$lambda32(BotsRepository this$0, final SingleEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.remoteDatabase.collection("bot_categories").get().addOnFailureListener(new OnFailureListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                BotsRepository.m1155getCategoriesInfo$lambda32$lambda30(SingleEmitter.this, exc);
            }
        }).addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                BotsRepository.m1156getCategoriesInfo$lambda32$lambda31(SingleEmitter.this, (QuerySnapshot) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategoriesInfo$lambda-32$lambda-30  reason: not valid java name */
    public static final void m1155getCategoriesInfo$lambda32$lambda30(SingleEmitter emitter, Exception exception) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(exception, "exception");
        emitter.onError(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategoriesInfo$lambda-32$lambda-31  reason: not valid java name */
    public static final void m1156getCategoriesInfo$lambda32$lambda31(SingleEmitter emitter, QuerySnapshot querySnapshot) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (querySnapshot != null) {
            emitter.onSuccess(querySnapshot);
        } else {
            emitter.onError(new EmptySnapshotException("Collection bot_categories is empty"));
        }
    }

    public final void storeCategoryDocuments(QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        ArrayList arrayList = new ArrayList();
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        for (DocumentSnapshot documentSnapshot : documents) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Object obj = documentSnapshot.get("locales");
            HashMap hashMap = obj instanceof HashMap ? (HashMap) obj : null;
            if (hashMap != null) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    Object key = entry.getKey();
                    String str = (String) ((HashMap) entry.getValue()).get("title");
                    if (str == null) {
                        str = "";
                    }
                    linkedHashMap.put(key, str);
                }
            }
            String id = documentSnapshot.getId();
            Intrinsics.checkNotNullExpressionValue(id, "document.id");
            String string = documentSnapshot.getString("title");
            String str2 = string == null ? "" : string;
            Long l = documentSnapshot.getLong("priority");
            int longValue = l == null ? 0 : (int) l.longValue();
            Object obj2 = documentSnapshot.get("tags");
            List list = obj2 instanceof List ? (List) obj2 : null;
            arrayList.add(new BotsCategoryDbModel(id, str2, longValue, list == null ? CollectionsKt__CollectionsKt.emptyList() : list, linkedHashMap));
        }
        this.categoriesDao.insertOrReplace(arrayList);
    }

    public final List<TagDbModel> getTags() {
        List<TagDbModel> filterNotNull;
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(this.tagsDao.getAll());
        return filterNotNull;
    }

    public final Completable storePurchasesInfo(final List<ShopProduct> products) {
        Intrinsics.checkNotNullParameter(products, "products");
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Action
            public final void run() {
                BotsRepository.m1169storePurchasesInfo$lambda40(products, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction {\n           …          }\n            }");
        return fromAction;
    }

    public final BotsDbModel getBotById(String botId) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        return this.botsDao.getById(botId);
    }

    public final Single<BotsDbModel> getBotBySku(String sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        return this.botsDao.getBotBySku(sku);
    }

    public final Completable resetDownloads() {
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.smedialink.bots.data.repository.BotsRepository$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Action
            public final void run() {
                BotsRepository.m1163resetDownloads$lambda41(BotsRepository.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction {\n           ….AVAILABLE)\n            }");
        return fromAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: resetDownloads$lambda-41  reason: not valid java name */
    public static final void m1163resetDownloads$lambda41(BotsRepository this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BotsDao.resetDownloads$default(this$0.botsDao, BotStatus.AVAILABLE, null, 2, null);
    }

    private final boolean botIsPreinstalled(String str) {
        BotsDbModel botsDbModel;
        List<BotsDbModel> initialBotsList = Companion.initialBotsList();
        ListIterator<BotsDbModel> listIterator = initialBotsList.listIterator(initialBotsList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                botsDbModel = null;
                break;
            }
            botsDbModel = listIterator.previous();
            if (Intrinsics.areEqual(botsDbModel.getId(), str)) {
                break;
            }
        }
        return botsDbModel != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storePurchasesInfo$lambda-40  reason: not valid java name */
    public static final void m1169storePurchasesInfo$lambda40(List products, BotsRepository this$0) {
        int i;
        BotsDbModel copy;
        Intrinsics.checkNotNullParameter(products, "$products");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator it = products.iterator();
        while (true) {
            BotsDbModel botsDbModel = null;
            if (!it.hasNext()) {
                break;
            }
            ShopProduct shopProduct = (ShopProduct) it.next();
            BotsDbModel bySku = this$0.botsDao.getBySku(shopProduct.getSku());
            if (bySku != null) {
                botsDbModel = bySku.copy((r50 & 1) != 0 ? bySku.f249id : null, (r50 & 2) != 0 ? bySku.sku : null, (r50 & 4) != 0 ? bySku.lang : null, (r50 & 8) != 0 ? bySku.avatarOriginal : null, (r50 & 16) != 0 ? bySku.avatarRounded : null, (r50 & 32) != 0 ? bySku.titleLocales : null, (r50 & 64) != 0 ? bySku.descriptionLocales : null, (r50 & 128) != 0 ? bySku.title : null, (r50 & 256) != 0 ? bySku.description : null, (r50 & 512) != 0 ? bySku.installs : 0L, (r50 & 1024) != 0 ? bySku.priority : 0L, (r50 & 2048) != 0 ? bySku.reviews : 0L, (r50 & 4096) != 0 ? bySku.rating : BitmapDescriptorFactory.HUE_RED, (r50 & 8192) != 0 ? bySku.ownRating : 0, (r50 & 16384) != 0 ? bySku.installLogged : 0, (r50 & 32768) != 0 ? bySku.useAssets : 0, (r50 & 65536) != 0 ? bySku.botUpdated : 0, (r50 & 131072) != 0 ? bySku.tags : null, (r50 & 262144) != 0 ? bySku.file : null, (r50 & 524288) != 0 ? bySku.hash : null, (r50 & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? bySku.phrases : 0L, (r50 & 2097152) != 0 ? bySku.themes : 0L, (r50 & 4194304) != 0 ? bySku.created : null, (8388608 & r50) != 0 ? bySku.updated : null, (r50 & ConnectionsManager.FileTypePhoto) != 0 ? bySku.price : shopProduct.getPrice(), (r50 & ConnectionsManager.FileTypeVideo) != 0 ? bySku.type : null, (r50 & ConnectionsManager.FileTypeFile) != 0 ? bySku.status : null);
            }
            if (botsDbModel != null) {
                this$0.botsDao.insertOrReplace(botsDbModel);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = products.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if ((((ShopProduct) next).getReceipt() != null ? 1 : 0) != 0) {
                arrayList.add(next);
            }
        }
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BotsDbModel bySku2 = this$0.botsDao.getBySku(((ShopProduct) obj).getSku());
            if ((bySku2 == null ? null : bySku2.getStatus()) == BotStatus.PAID) {
                copy = bySku2.copy((r50 & 1) != 0 ? bySku2.f249id : null, (r50 & 2) != 0 ? bySku2.sku : null, (r50 & 4) != 0 ? bySku2.lang : null, (r50 & 8) != 0 ? bySku2.avatarOriginal : null, (r50 & 16) != 0 ? bySku2.avatarRounded : null, (r50 & 32) != 0 ? bySku2.titleLocales : null, (r50 & 64) != 0 ? bySku2.descriptionLocales : null, (r50 & 128) != 0 ? bySku2.title : null, (r50 & 256) != 0 ? bySku2.description : null, (r50 & 512) != 0 ? bySku2.installs : 0L, (r50 & 1024) != 0 ? bySku2.priority : 0L, (r50 & 2048) != 0 ? bySku2.reviews : 0L, (r50 & 4096) != 0 ? bySku2.rating : BitmapDescriptorFactory.HUE_RED, (r50 & 8192) != 0 ? bySku2.ownRating : 0, (r50 & 16384) != 0 ? bySku2.installLogged : 0, (r50 & 32768) != 0 ? bySku2.useAssets : 0, (r50 & 65536) != 0 ? bySku2.botUpdated : 0, (r50 & 131072) != 0 ? bySku2.tags : null, (r50 & 262144) != 0 ? bySku2.file : null, (r50 & 524288) != 0 ? bySku2.hash : null, (r50 & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? bySku2.phrases : 0L, (r50 & 2097152) != 0 ? bySku2.themes : 0L, (r50 & 4194304) != 0 ? bySku2.created : null, (8388608 & r50) != 0 ? bySku2.updated : null, (r50 & ConnectionsManager.FileTypePhoto) != 0 ? bySku2.price : null, (r50 & ConnectionsManager.FileTypeVideo) != 0 ? bySku2.type : null, (r50 & ConnectionsManager.FileTypeFile) != 0 ? bySku2.status : BotStatus.AVAILABLE);
                this$0.botsDao.insertOrReplace(copy);
            }
            i = i2;
        }
    }
}
