package org.telegram.p043ui.Components.Premium.boosts.adapters;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Premium.boosts.BoostDialogs;
import org.telegram.p043ui.Components.Premium.boosts.BoostRepository;
import org.telegram.p043ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.HeaderCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.LinkCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.TableCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.TextInfoCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_payments_checkedGiftCode;
/* renamed from: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter */
/* loaded from: classes6.dex */
public abstract class GiftInfoAdapter extends RecyclerListView.SelectionAdapter {
    private BaseFragment baseFragment;
    private FrameLayout container;
    private TLRPC$TL_payments_checkedGiftCode giftCode;
    private boolean isUnused;
    private final Theme.ResourcesProvider resourcesProvider;
    private String slug;

    protected abstract void afterCodeApplied();

    protected abstract void dismiss();

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i != 0) {
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2) {
                    i2 = 3;
                    if (i != 3) {
                        i2 = 4;
                        if (i != 4) {
                            return 5;
                        }
                    }
                }
            }
            return i2;
        }
        return 0;
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public abstract void onHiddenLinkClicked();

    public abstract void onObjectClicked(TLObject tLObject);

    public GiftInfoAdapter(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void init(BaseFragment baseFragment, TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode, String str, FrameLayout frameLayout) {
        this.isUnused = tLRPC$TL_payments_checkedGiftCode.used_date == 0;
        this.baseFragment = baseFragment;
        this.giftCode = tLRPC$TL_payments_checkedGiftCode;
        this.slug = str;
        this.container = frameLayout;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View linkCell;
        Context context = viewGroup.getContext();
        if (i == 1) {
            linkCell = new LinkCell(context, this.baseFragment, this.resourcesProvider);
        } else if (i == 2) {
            linkCell = new TableCell(context, this.resourcesProvider);
        } else if (i == 3) {
            linkCell = new TextInfoCell(context, this.resourcesProvider);
        } else if (i == 4) {
            linkCell = new ActionBtnCell(context, this.resourcesProvider);
            linkCell.setPadding(0, 0, 0, AndroidUtilities.m107dp(14));
        } else if (i != 5) {
            linkCell = new HeaderCell(context, this.resourcesProvider);
        } else {
            linkCell = new View(context);
        }
        linkCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(linkCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        String string;
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 0) {
            HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
            if (this.isUnused) {
                headerCell.setGiftLinkText();
            } else {
                headerCell.setUsedGiftLinkText();
            }
            TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode = this.giftCode;
            if (tLRPC$TL_payments_checkedGiftCode.boost != null) {
                headerCell.setGiftLinkToUserText(tLRPC$TL_payments_checkedGiftCode.to_id, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        GiftInfoAdapter.this.onObjectClicked((TLObject) obj);
                    }
                });
            }
            if (this.giftCode.to_id == -1) {
                headerCell.setUnclaimedText();
            }
        } else if (itemViewType == 1) {
            LinkCell linkCell = (LinkCell) viewHolder.itemView;
            linkCell.setSlug(this.slug);
            if (this.giftCode.boost != null && this.slug == null) {
                linkCell.hideSlug(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        GiftInfoAdapter.this.onHiddenLinkClicked();
                    }
                });
            }
            String str = this.slug;
            if ((str == null || str.isEmpty()) && this.giftCode.to_id == -1) {
                linkCell.hideSlug(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        GiftInfoAdapter.this.onHiddenLinkClicked();
                    }
                });
            }
        } else if (itemViewType == 2) {
            ((TableCell) viewHolder.itemView).setData(this.giftCode, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GiftInfoAdapter.this.onObjectClicked((TLObject) obj);
                }
            });
        } else if (itemViewType != 3) {
            if (itemViewType != 4) {
                return;
            }
            final ActionBtnCell actionBtnCell = (ActionBtnCell) viewHolder.itemView;
            actionBtnCell.setOkStyle(this.isUnused);
            actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GiftInfoAdapter.this.lambda$onBindViewHolder$2(actionBtnCell, view);
                }
            });
            TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode2 = this.giftCode;
            if (tLRPC$TL_payments_checkedGiftCode2.boost != null || tLRPC$TL_payments_checkedGiftCode2.flags == -1) {
                actionBtnCell.setCloseStyle();
                actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GiftInfoAdapter.this.lambda$onBindViewHolder$3(view);
                    }
                });
            }
        } else {
            TextInfoCell textInfoCell = (TextInfoCell) viewHolder.itemView;
            textInfoCell.setTextGravity(17);
            textInfoCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            textInfoCell.setTopPadding(14);
            textInfoCell.setBottomPadding(15);
            TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode3 = this.giftCode;
            if (tLRPC$TL_payments_checkedGiftCode3.boost != null) {
                String str2 = this.slug;
                if (str2 == null || str2.isEmpty()) {
                    textInfoCell.setText(LocaleController.getString("BoostingLinkNotActivated", C3632R.string.BoostingLinkNotActivated));
                    return;
                }
                textInfoCell.setFixedSize(14);
                textInfoCell.setText(null);
            } else if (this.isUnused) {
                if (tLRPC$TL_payments_checkedGiftCode3.to_id == -1) {
                    string = LocaleController.getString("BoostingSendLinkToAnyone", C3632R.string.BoostingSendLinkToAnyone);
                } else {
                    string = LocaleController.getString("BoostingSendLinkToFriends", C3632R.string.BoostingSendLinkToFriends);
                }
                textInfoCell.setText(AndroidUtilities.replaceSingleTag(string, Theme.key_chat_messageLinkIn, 0, new GiftInfoAdapter$$ExternalSyntheticLambda3(this), this.resourcesProvider));
            } else {
                Date date = new Date(this.giftCode.used_date * 1000);
                textInfoCell.setText(LocaleController.formatString("BoostingUsedLinkDate", C3632R.string.BoostingUsedLinkDate, LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(date), LocaleController.getInstance().formatterDay.format(date))));
            }
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$2(final ActionBtnCell actionBtnCell, View view) {
        if (this.isUnused) {
            if (actionBtnCell.isLoading()) {
                return;
            }
            actionBtnCell.updateLoading(true);
            BoostRepository.applyGiftCode(this.slug, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GiftInfoAdapter.this.lambda$onBindViewHolder$0(actionBtnCell, (Void) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GiftInfoAdapter.this.lambda$onBindViewHolder$1(actionBtnCell, (TLRPC$TL_error) obj);
                }
            });
            return;
        }
        dismiss();
    }

    public /* synthetic */ void lambda$onBindViewHolder$0(ActionBtnCell actionBtnCell, Void r2) {
        actionBtnCell.updateLoading(false);
        afterCodeApplied();
        dismiss();
    }

    public /* synthetic */ void lambda$onBindViewHolder$1(ActionBtnCell actionBtnCell, TLRPC$TL_error tLRPC$TL_error) {
        actionBtnCell.updateLoading(false);
        BoostDialogs.processApplyGiftCodeError(tLRPC$TL_error, this.container, this.resourcesProvider, new GiftInfoAdapter$$ExternalSyntheticLambda3(this));
    }

    public /* synthetic */ void lambda$onBindViewHolder$3(View view) {
        dismiss();
    }

    public void share() {
        final String str = "https://t.me/giftcode/" + this.slug;
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 3);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.adapters.GiftInfoAdapter$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                boolean lambda$share$4;
                lambda$share$4 = GiftInfoAdapter.this.lambda$share$4(str, dialogsActivity2, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                return lambda$share$4;
            }
        });
        this.baseFragment.presentFragment(dialogsActivity);
        dismiss();
    }

    public /* synthetic */ boolean lambda$share$4(String str, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
        long j = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            j = ((MessagesStorage.TopicKey) arrayList.get(i)).dialogId;
            this.baseFragment.getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m94of(str, j, null, null, null, true, null, null, null, true, 0, null, false, null));
        }
        dialogsActivity.finishFragment();
        BoostDialogs.showGiftLinkForwardedBulletin(j);
        return true;
    }
}
