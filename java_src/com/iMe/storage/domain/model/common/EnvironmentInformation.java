package com.iMe.storage.domain.model.common;

import com.google.firebase.FirebaseOptions;
import com.iMe.storage.common.AppConfiguration$Common;
import com.iMe.storage.domain.model.common.EnvironmentInformation;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: EnvironmentInformation.kt */
/* loaded from: classes3.dex */
public abstract class EnvironmentInformation {
    public static final Companion Companion = new Companion(null);
    private static final Lazy<List<EnvironmentInformation>> availableEnvironments$delegate = LazyKt.lazy(new Function0<List<? extends EnvironmentInformation>>() { // from class: com.iMe.storage.domain.model.common.EnvironmentInformation$Companion$availableEnvironments$2
        @Override // kotlin.jvm.functions.Function0
        public final List<? extends EnvironmentInformation> invoke() {
            List<? extends EnvironmentInformation> listOfNotNull;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new EnvironmentInformation[]{EnvironmentInformation.Production.INSTANCE, EnvironmentInformation.Stage.INSTANCE, EnvironmentInformation.Development.INSTANCE});
            return listOfNotNull;
        }
    });
    private final long authBotId;
    private final String authBotUsername;
    private final String binanceProcessUrl;
    private final String bscScanUrl;
    private final String dynamicLinksDomain;
    private final Environment environment;
    private final FirebaseOptions googleServiceOptions;
    private final int hintDefaultShowsCount;
    private final String mainApiUrl;
    private final long newsBotId;
    private final String newsBotUsername;
    private final long reactionBotId;
    private final String reactionBotUsername;
    private final String tonConfigFilename;

    public /* synthetic */ EnvironmentInformation(Environment environment, FirebaseOptions firebaseOptions, String str, String str2, long j, String str3, long j2, String str4, String str5, long j3, String str6, String str7, int i, String str8, DefaultConstructorMarker defaultConstructorMarker) {
        this(environment, firebaseOptions, str, str2, j, str3, j2, str4, str5, j3, str6, str7, i, str8);
    }

    public static final List<EnvironmentInformation> getAvailableEnvironments() {
        return Companion.getAvailableEnvironments();
    }

    private EnvironmentInformation(Environment environment, FirebaseOptions firebaseOptions, String str, String str2, long j, String str3, long j2, String str4, String str5, long j3, String str6, String str7, int i, String str8) {
        this.environment = environment;
        this.googleServiceOptions = firebaseOptions;
        this.mainApiUrl = str;
        this.authBotUsername = str2;
        this.authBotId = j;
        this.newsBotUsername = str3;
        this.newsBotId = j2;
        this.bscScanUrl = str4;
        this.reactionBotUsername = str5;
        this.reactionBotId = j3;
        this.binanceProcessUrl = str6;
        this.tonConfigFilename = str7;
        this.hintDefaultShowsCount = i;
        this.dynamicLinksDomain = str8;
    }

    public final Environment getEnvironment() {
        return this.environment;
    }

    public final FirebaseOptions getGoogleServiceOptions() {
        return this.googleServiceOptions;
    }

    public final String getMainApiUrl() {
        return this.mainApiUrl;
    }

    public final String getAuthBotUsername() {
        return this.authBotUsername;
    }

    public final long getAuthBotId() {
        return this.authBotId;
    }

    public final String getNewsBotUsername() {
        return this.newsBotUsername;
    }

    public final long getNewsBotId() {
        return this.newsBotId;
    }

    public final String getBscScanUrl() {
        return this.bscScanUrl;
    }

    public final String getReactionBotUsername() {
        return this.reactionBotUsername;
    }

    public final long getReactionBotId() {
        return this.reactionBotId;
    }

    public final String getBinanceProcessUrl() {
        return this.binanceProcessUrl;
    }

    public final String getTonConfigFilename() {
        return this.tonConfigFilename;
    }

    public final int getHintDefaultShowsCount() {
        return this.hintDefaultShowsCount;
    }

    public final String getDynamicLinksDomain() {
        return this.dynamicLinksDomain;
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Production extends EnvironmentInformation {
        public static final Production INSTANCE = new Production();

        private Production() {
            super(Environment.PRODUCTION, AppConfiguration$Common.INSTANCE.getProdGoogleServices(), "https://api.imem.app/api/", "ime_official_bot", 5840555707L, "iMe_news_bot", 6515155116L, "https://bscscan.com/", "imelikebot", 1399580637L, "https://binance.pay.imem.app/", "global-config-wallet.json", 3, "cryptoboxes.imem.app", null);
        }
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Stage extends EnvironmentInformation {
        public static final Stage INSTANCE = new Stage();

        private Stage() {
            super(Environment.STAGE, AppConfiguration$Common.INSTANCE.getStageGoogleServices(), "https://api.stage.imem.app/api/", "ime_official_stage_bot", 5825001942L, "iMe_news_stage_bot", 6367869695L, "https://testnet.bscscan.com/", "iMeLikeStageBot", 1338223875L, "https://binance.pay.stage.imem.app/", "testnet-global.config.json", Integer.MAX_VALUE, "imestage.page.link", null);
        }
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Development extends EnvironmentInformation {
        public static final Development INSTANCE = new Development();

        private Development() {
            super(Environment.DEVELOPMENT, AppConfiguration$Common.INSTANCE.getStageGoogleServices(), "https://api.stage.imem.app/api/", "ime_official_stage_bot", 5825001942L, "iMe_news_stage_bot", 6367869695L, "https://testnet.bscscan.com/", "iMeLikeStageBot", 1338223875L, "https://binance.pay.stage.imem.app/", "testnet-global.config.json", Integer.MAX_VALUE, "imestage.page.link", null);
        }
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getAvailableEnvironments$annotations() {
        }

        private Companion() {
        }

        public final List<EnvironmentInformation> getAvailableEnvironments() {
            return (List) EnvironmentInformation.availableEnvironments$delegate.getValue();
        }
    }
}
