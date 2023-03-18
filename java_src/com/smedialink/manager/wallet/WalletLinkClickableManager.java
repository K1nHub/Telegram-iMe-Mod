package com.smedialink.manager.wallet;

import com.smedialink.model.wallet.transaction.ClickableItem;
import com.smedialink.model.wallet.transaction.LinkedTextType;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: WalletLinkClickableManager.kt */
/* loaded from: classes3.dex */
public final class WalletLinkClickableManager {
    private final CryptoAccessManager accessManager;
    private final ClickableItem clickableItem;
    private List<Pair<String, Function0<Unit>>> dialogsOptions;
    private final ResourceManager resourceManager;
    private final TelegramGateway telegramGateway;
    private WalletLinkClickableView viewState;

    /* compiled from: WalletLinkClickableManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LinkedTextType.values().length];
            try {
                iArr[LinkedTextType.USER_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LinkedTextType.ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LinkedTextType.NOTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletLinkClickableManager(ClickableItem clickableItem, ResourceManager resourceManager, CryptoAccessManager accessManager, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(clickableItem, "clickableItem");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.clickableItem = clickableItem;
        this.resourceManager = resourceManager;
        this.accessManager = accessManager;
        this.telegramGateway = telegramGateway;
        this.dialogsOptions = new ArrayList();
    }

    public void attachViewState(WalletLinkClickableView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewState = view;
        setupClickableLink();
    }

    public void onDetachViewState() {
        this.viewState = null;
    }

    private final void setupClickableLink() {
        String linkedText = this.clickableItem.getLinkedText();
        WalletLinkClickableView walletLinkClickableView = this.viewState;
        if (walletLinkClickableView != null) {
            walletLinkClickableView.setupMessageClickableLink(this.clickableItem.getMessageText(this.resourceManager), linkedText, new WalletLinkClickableManager$setupClickableLink$1(this, linkedText));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] getAlertOptionsByType(String str, LinkedTextType linkedTextType) {
        int i = WhenMappings.$EnumSwitchMapping$0[linkedTextType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return new String[0];
                }
                throw new NoWhenBranchMatchedException();
            }
            return getAddressAlertOptions(str);
        }
        return getUserIdAlertOptions(Long.parseLong(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resolveIndexOfAlertAction(int i) {
        this.dialogsOptions.get(i).getSecond().invoke();
    }

    private final String[] getUserIdAlertOptions(long j) {
        List mutableListOf;
        List filterNotNull;
        List<Pair<String, Function0<Unit>>> mutableList;
        int collectionSizeOrDefault;
        Pair[] pairArr = new Pair[3];
        pairArr[0] = this.telegramGateway.hasUser(j) ? TuplesKt.m100to(this.resourceManager.getString(C3286R.string.wallet_user_id_dialog_go_to_profile_action), new WalletLinkClickableManager$getUserIdAlertOptions$1(this, j)) : null;
        pairArr[1] = TuplesKt.m100to(this.resourceManager.getString(C3286R.string.wallet_user_id_dialog_copy_id_action), new WalletLinkClickableManager$getUserIdAlertOptions$2(this, j));
        pairArr[2] = TuplesKt.m100to(this.resourceManager.getString(C3286R.string.wallet_user_id_dialog_transfer_action), new WalletLinkClickableManager$getUserIdAlertOptions$3(this, j));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(pairArr);
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(mutableListOf);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) filterNotNull);
        this.dialogsOptions = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mutableList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = mutableList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).component1());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private final String[] getAddressAlertOptions(String str) {
        List mutableListOf;
        List filterNotNull;
        List<Pair<String, Function0<Unit>>> mutableList;
        int collectionSizeOrDefault;
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.m100to(this.resourceManager.getString(C3286R.string.wallet_token_details_action_copy_address), new WalletLinkClickableManager$getAddressAlertOptions$1(this, str));
        pairArr[1] = isTransferAvailable(this.clickableItem.getTokenCode()) ? TuplesKt.m100to(this.resourceManager.getString(C3286R.string.wallet_user_id_dialog_transfer_action), new WalletLinkClickableManager$getAddressAlertOptions$2(this)) : null;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(pairArr);
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(mutableListOf);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) filterNotNull);
        this.dialogsOptions = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mutableList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = mutableList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).component1());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private final boolean isTransferAvailable(TokenCode tokenCode) {
        if (tokenCode.isCryptoTokens()) {
            return this.accessManager.isCurrentBlockchainWalletCreated();
        }
        return false;
    }
}
