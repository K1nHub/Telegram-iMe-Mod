package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$RequestPeerType;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeUser;
/* renamed from: org.telegram.ui.Cells.RequestPeerRequirementsCell */
/* loaded from: classes5.dex */
public class RequestPeerRequirementsCell extends LinearLayout {
    private TLRPC$RequestPeerType requestPeerType;
    private ArrayList<Requirement> requirements;

    public RequestPeerRequirementsCell(Context context) {
        super(context);
        this.requirements = new ArrayList<>();
        setOrientation(1);
        setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    public void set(TLRPC$RequestPeerType tLRPC$RequestPeerType) {
        if (this.requestPeerType != tLRPC$RequestPeerType) {
            this.requestPeerType = tLRPC$RequestPeerType;
            removeAllViews();
            this.requirements.clear();
            if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeUser) {
                checkRequirement(((TLRPC$TL_requestPeerTypeUser) tLRPC$RequestPeerType).premium, C3242R.string.PeerRequirementPremiumTrue, C3242R.string.PeerRequirementPremiumFalse);
            } else {
                boolean z = tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast;
                if (z) {
                    checkRequirement(tLRPC$RequestPeerType.has_username, C3242R.string.PeerRequirementChannelPublicTrue, C3242R.string.PeerRequirementChannelPublicFalse);
                    Boolean bool = tLRPC$RequestPeerType.bot_participant;
                    if (bool != null && bool.booleanValue()) {
                        this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(C3242R.string.PeerRequirementChannelBotParticipant))));
                    }
                    Boolean bool2 = tLRPC$RequestPeerType.creator;
                    if (bool2 != null && bool2.booleanValue()) {
                        this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(C3242R.string.PeerRequirementChannelCreatorTrue))));
                    }
                } else {
                    checkRequirement(tLRPC$RequestPeerType.has_username, C3242R.string.PeerRequirementGroupPublicTrue, C3242R.string.PeerRequirementGroupPublicFalse);
                    checkRequirement(tLRPC$RequestPeerType.forum, C3242R.string.PeerRequirementForumTrue, C3242R.string.PeerRequirementForumFalse);
                    Boolean bool3 = tLRPC$RequestPeerType.bot_participant;
                    if (bool3 != null && bool3.booleanValue()) {
                        this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(C3242R.string.PeerRequirementGroupBotParticipant))));
                    }
                    Boolean bool4 = tLRPC$RequestPeerType.creator;
                    if (bool4 != null && bool4.booleanValue()) {
                        this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(C3242R.string.PeerRequirementGroupCreatorTrue))));
                    }
                }
                Boolean bool5 = tLRPC$RequestPeerType.creator;
                if (bool5 == null || !bool5.booleanValue()) {
                    checkAdminRights(tLRPC$RequestPeerType.user_admin_rights, z, C3242R.string.PeerRequirementUserRights, C3242R.string.PeerRequirementUserRight);
                }
            }
            if (this.requirements.isEmpty()) {
                return;
            }
            HeaderCell headerCell = new HeaderCell(getContext(), 20);
            headerCell.setText(LocaleController.getString("PeerRequirements", C3242R.string.PeerRequirements));
            headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            addView(headerCell, LayoutHelper.createLinear(-1, -2));
            addView(emptyView(9, Theme.getColor("windowBackgroundWhite")), LayoutHelper.createLinear(-1, -2));
            Iterator<Requirement> it = this.requirements.iterator();
            while (it.hasNext()) {
                addView(new RequirementCell(this, getContext(), it.next()), LayoutHelper.createLinear(-1, -2));
            }
            addView(emptyView(12, Theme.getColor("windowBackgroundWhite")), LayoutHelper.createLinear(-1, -2));
            addView(emptyView(12, Theme.getThemedDrawable(getContext(), C3242R.C3244drawable.greydivider_bottom, "windowBackgroundGrayShadow")), LayoutHelper.createLinear(-1, -2));
        }
    }

    private View emptyView(int i, int i2) {
        return emptyView(i, new ColorDrawable(i2));
    }

    private View emptyView(final int i, Drawable drawable) {
        View view = new View(this, getContext()) { // from class: org.telegram.ui.Cells.RequestPeerRequirementsCell.1
            @Override // android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(i), 1073741824));
            }
        };
        view.setBackground(drawable);
        return view;
    }

    private void checkRequirement(Boolean bool, int i, int i2) {
        if (bool != null) {
            if (bool.booleanValue()) {
                this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(i))));
            } else {
                this.requirements.add(Requirement.make(AndroidUtilities.replaceTags(LocaleController.getString(i2))));
            }
        }
    }

    public static CharSequence rightsToString(TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, boolean z) {
        int i;
        String str;
        String string;
        ArrayList arrayList = new ArrayList();
        if (tLRPC$TL_chatAdminRights.change_info) {
            if (z) {
                string = LocaleController.getString("EditAdminChangeChannelInfo", C3242R.string.EditAdminChangeChannelInfo);
            } else {
                string = LocaleController.getString("EditAdminChangeGroupInfo", C3242R.string.EditAdminChangeGroupInfo);
            }
            arrayList.add(Requirement.make(1, string));
        }
        if (tLRPC$TL_chatAdminRights.post_messages && z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminPostMessages", C3242R.string.EditAdminPostMessages)));
        }
        if (tLRPC$TL_chatAdminRights.edit_messages && z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminEditMessages", C3242R.string.EditAdminEditMessages)));
        }
        if (tLRPC$TL_chatAdminRights.delete_messages) {
            if (z) {
                i = C3242R.string.EditAdminDeleteMessages;
                str = "EditAdminDeleteMessages";
            } else {
                i = C3242R.string.EditAdminGroupDeleteMessages;
                str = "EditAdminGroupDeleteMessages";
            }
            arrayList.add(Requirement.make(1, LocaleController.getString(str, i)));
        }
        if (tLRPC$TL_chatAdminRights.ban_users && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminBanUsers", C3242R.string.EditAdminBanUsers)));
        }
        if (tLRPC$TL_chatAdminRights.invite_users) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminAddUsers", C3242R.string.EditAdminAddUsers)));
        }
        if (tLRPC$TL_chatAdminRights.pin_messages && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminPinMessages", C3242R.string.EditAdminPinMessages)));
        }
        if (tLRPC$TL_chatAdminRights.add_admins) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminAddAdmins", C3242R.string.EditAdminAddAdmins)));
        }
        if (tLRPC$TL_chatAdminRights.anonymous && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminSendAnonymously", C3242R.string.EditAdminSendAnonymously)));
        }
        if (tLRPC$TL_chatAdminRights.manage_call) {
            arrayList.add(Requirement.make(1, LocaleController.getString("StartVoipChatPermission", C3242R.string.StartVoipChatPermission)));
        }
        if (tLRPC$TL_chatAdminRights.manage_topics && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("ManageTopicsPermission", C3242R.string.ManageTopicsPermission)));
        }
        if (arrayList.size() == 1) {
            return ((Requirement) arrayList.get(0)).text.toString().toLowerCase();
        }
        if (arrayList.isEmpty()) {
            return "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (i2 > 0) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            spannableStringBuilder.append((CharSequence) ((Requirement) arrayList.get(i2)).text.toString().toLowerCase());
        }
        return spannableStringBuilder;
    }

    private void checkAdminRights(TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, boolean z, CharSequence charSequence, CharSequence charSequence2) {
        int i;
        String str;
        String string;
        if (tLRPC$TL_chatAdminRights == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (tLRPC$TL_chatAdminRights.change_info) {
            if (z) {
                string = LocaleController.getString("EditAdminChangeChannelInfo", C3242R.string.EditAdminChangeChannelInfo);
            } else {
                string = LocaleController.getString("EditAdminChangeGroupInfo", C3242R.string.EditAdminChangeGroupInfo);
            }
            arrayList.add(Requirement.make(1, string));
        }
        if (tLRPC$TL_chatAdminRights.post_messages && z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminPostMessages", C3242R.string.EditAdminPostMessages)));
        }
        if (tLRPC$TL_chatAdminRights.edit_messages && z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminEditMessages", C3242R.string.EditAdminEditMessages)));
        }
        if (tLRPC$TL_chatAdminRights.delete_messages) {
            if (z) {
                i = C3242R.string.EditAdminDeleteMessages;
                str = "EditAdminDeleteMessages";
            } else {
                i = C3242R.string.EditAdminGroupDeleteMessages;
                str = "EditAdminGroupDeleteMessages";
            }
            arrayList.add(Requirement.make(1, LocaleController.getString(str, i)));
        }
        if (tLRPC$TL_chatAdminRights.ban_users && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminBanUsers", C3242R.string.EditAdminBanUsers)));
        }
        if (tLRPC$TL_chatAdminRights.invite_users) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminAddUsers", C3242R.string.EditAdminAddUsers)));
        }
        if (tLRPC$TL_chatAdminRights.pin_messages && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminPinMessages", C3242R.string.EditAdminPinMessages)));
        }
        if (tLRPC$TL_chatAdminRights.add_admins) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminAddAdmins", C3242R.string.EditAdminAddAdmins)));
        }
        if (tLRPC$TL_chatAdminRights.anonymous && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("EditAdminSendAnonymously", C3242R.string.EditAdminSendAnonymously)));
        }
        if (tLRPC$TL_chatAdminRights.manage_call) {
            arrayList.add(Requirement.make(1, LocaleController.getString("StartVoipChatPermission", C3242R.string.StartVoipChatPermission)));
        }
        if (tLRPC$TL_chatAdminRights.manage_topics && !z) {
            arrayList.add(Requirement.make(1, LocaleController.getString("ManageTopicsPermission", C3242R.string.ManageTopicsPermission)));
        }
        if (arrayList.size() == 1) {
            this.requirements.add(Requirement.make(TextUtils.concat(charSequence2, " ", ((Requirement) arrayList.get(0)).text)));
        } else if (!arrayList.isEmpty()) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.append((CharSequence) " ");
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i2 > 0) {
                    valueOf.append((CharSequence) ", ");
                }
                valueOf.append((CharSequence) ((Requirement) arrayList.get(i2)).text.toString().toLowerCase());
            }
            valueOf.append((CharSequence) ".");
            this.requirements.add(Requirement.make(valueOf));
        }
    }

    private void checkAdminRights(TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, boolean z, int i, int i2) {
        checkAdminRights(tLRPC$TL_chatAdminRights, z, AndroidUtilities.replaceTags(LocaleController.getString(i)), AndroidUtilities.replaceTags(LocaleController.getString(i2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Cells.RequestPeerRequirementsCell$RequirementCell */
    /* loaded from: classes5.dex */
    public class RequirementCell extends LinearLayout {
        private ImageView imageView;
        private TextView textView;

        public RequirementCell(RequestPeerRequirementsCell requestPeerRequirementsCell, Context context, Requirement requirement) {
            super(context);
            setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            setOrientation(0);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setImageResource(requirement.padding <= 0 ? C3242R.C3244drawable.list_check : C3242R.C3244drawable.list_circle);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteBlueHeader"), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createLinear(20, 20, BitmapDescriptorFactory.HUE_RED, 51, (requirement.padding * 16) + 17, -1, 0, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 14.0f);
            this.textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
            this.textView.setSingleLine(false);
            this.textView.setText(requirement.text);
            addView(this.textView, LayoutHelper.createLinear(-1, -2, 1, 6, 4, 24, 4));
        }
    }
}
