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
    private final String binanceProcessUrl;
    private final String bitcoinScanUrl;
    private final String bscScanUrl;
    private final String dynamicLinksDomain;
    private final Environment environment;
    private final String etherScanUrl;
    private final String fantomScanUrl;
    private final FirebaseOptions googleServiceOptions;
    private final int hintDefaultShowsCount;
    private final String mainApiUrl;
    private final String polygonScanUrl;
    private final long reactionBotId;
    private final String reactionBotUsername;
    private final String tonConfigFilename;
    private final String tonScanUrl;
    private final String tronScanUrl;
    private final long walletActivationBotId;
    private final String walletActivationBotUsername;

    public /* synthetic */ EnvironmentInformation(Environment environment, FirebaseOptions firebaseOptions, String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, long j2, String str11, String str12, int i, String str13, DefaultConstructorMarker defaultConstructorMarker) {
        this(environment, firebaseOptions, str, str2, j, str3, str4, str5, str6, str7, str8, str9, str10, j2, str11, str12, i, str13);
    }

    public static final List<EnvironmentInformation> getAvailableEnvironments() {
        return Companion.getAvailableEnvironments();
    }

    private EnvironmentInformation(Environment environment, FirebaseOptions firebaseOptions, String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, long j2, String str11, String str12, int i, String str13) {
        this.environment = environment;
        this.googleServiceOptions = firebaseOptions;
        this.mainApiUrl = str;
        this.walletActivationBotUsername = str2;
        this.walletActivationBotId = j;
        this.etherScanUrl = str3;
        this.bscScanUrl = str4;
        this.polygonScanUrl = str5;
        this.fantomScanUrl = str6;
        this.tronScanUrl = str7;
        this.tonScanUrl = str8;
        this.bitcoinScanUrl = str9;
        this.reactionBotUsername = str10;
        this.reactionBotId = j2;
        this.binanceProcessUrl = str11;
        this.tonConfigFilename = str12;
        this.hintDefaultShowsCount = i;
        this.dynamicLinksDomain = str13;
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

    public final String getWalletActivationBotUsername() {
        return this.walletActivationBotUsername;
    }

    public final long getWalletActivationBotId() {
        return this.walletActivationBotId;
    }

    public final String getEtherScanUrl() {
        return this.etherScanUrl;
    }

    public final String getBscScanUrl() {
        return this.bscScanUrl;
    }

    public final String getPolygonScanUrl() {
        return this.polygonScanUrl;
    }

    public final String getFantomScanUrl() {
        return this.fantomScanUrl;
    }

    public final String getTronScanUrl() {
        return this.tronScanUrl;
    }

    public final String getTonScanUrl() {
        return this.tonScanUrl;
    }

    public final String getBitcoinScanUrl() {
        return this.bitcoinScanUrl;
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
            super(Environment.PRODUCTION, AppConfiguration$Common.INSTANCE.getProdGoogleServices(), "https://api.imem.app/api/", "ime_official_bot", 5840555707L, "https://etherscan.io/", "https://bscscan.com/", "https://polygonscan.com/", "https://ftmscan.com/", "https://tronscan.io/", "https://tonscan.org/", "https://explorer.btc.com/btc/", "imelikebot", 1399580637L, "https://binance.pay.imem.app/", "global-config-wallet.json", 3, "cryptoboxes.imem.app", null);
        }
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Stage extends EnvironmentInformation {
        public static final Stage INSTANCE = new Stage();

        private Stage() {
            super(Environment.STAGE, AppConfiguration$Common.INSTANCE.getStageGoogleServices(), "https://api.stage.imem.app/api/", "ime_official_stage_bot", 5825001942L, "https://ropsten.etherscan.io/", "https://testnet.bscscan.com/", "https://mumbai.polygonscan.com/", "https://testnet.ftmscan.com/", "https://nile.tronscan.org/", "https://tonscan.org/", "https://blockchair.com/bitcoin/testnet/", "iMeLikeStageBot", 1338223875L, "https://binance.pay.stage.imem.app/", "testnet-global.config.json", Integer.MAX_VALUE, "imestage.page.link", null);
        }
    }

    /* compiled from: EnvironmentInformation.kt */
    /* loaded from: classes3.dex */
    public static final class Development extends EnvironmentInformation {
        public static final Development INSTANCE = new Development();

        private Development() {
            super(Environment.DEVELOPMENT, AppConfiguration$Common.INSTANCE.getStageGoogleServices(), "https://api.stage.imem.app/api/", "ime_official_stage_bot", 5825001942L, "https://ropsten.etherscan.io/", "https://testnet.bscscan.com/", "https://mumbai.polygonscan.com/", "https://testnet.ftmscan.com/", "https://nile.tronscan.org/", "https://tonscan.org/", "https://blockchair.com/bitcoin/testnet/", "iMeLikeStageBot", 1338223875L, "https://binance.pay.stage.imem.app/", "testnet-global.config.json", Integer.MAX_VALUE, "imestage.page.link", null);
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
