package com.iMe.utils.extentions.model.filter;

import com.iMe.storage.domain.model.filters.FilterFab;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: FilterFabExt.kt */
/* loaded from: classes6.dex */
public final class FilterFabExtKt {

    /* compiled from: FilterFabExt.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FilterFab.values().length];
            try {
                iArr[FilterFab.CREATE_CHAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FilterFab.ARCHIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FilterFab.CLOUD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FilterFab.MARK_ALL_READ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FilterFab.WALLET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FilterFab.CONTACTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FilterFab.MUSIC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FilterFab.ALBUMS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FilterFab.CREATE_ALBUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[FilterFab.CLEAR_DRAFTS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[FilterFab.CREATE_STORY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void bindBig(FilterFab filterFab, RLottieImageView view) {
        Intrinsics.checkNotNullParameter(filterFab, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        switch (WhenMappings.$EnumSwitchMapping$0[filterFab.ordinal()]) {
            case 1:
                view.setAnimation(C3473R.raw.write_contacts_fab_icon, 52, 52);
                return;
            case 2:
                view.setImageResource(C3473R.C3475drawable.fork_fab_archive);
                return;
            case 3:
                view.setImageResource(C3473R.C3475drawable.fork_fab_cloud);
                return;
            case 4:
                view.setImageResource(C3473R.C3475drawable.fork_fab_mark_all_read);
                return;
            case 5:
                view.setImageResource(C3473R.C3475drawable.fork_fab_wallet);
                return;
            case 6:
                view.setImageResource(C3473R.C3475drawable.fork_fab_contacts);
                return;
            case 7:
                view.setImageResource(C3473R.C3475drawable.fork_fab_music);
                return;
            case 8:
                view.setImageResource(C3473R.C3475drawable.fork_fab_albums);
                return;
            case 9:
                view.setImageResource(C3473R.C3475drawable.msg_add);
                return;
            case 10:
                view.setImageResource(C3473R.C3475drawable.msg_clear);
                return;
            case 11:
                view.setAnimation(C3473R.raw.write_contacts_fab_icon_camera, 56, 56);
                return;
            default:
                return;
        }
    }

    public static final void bindMini(FilterFab filterFab, RLottieImageView view) {
        Intrinsics.checkNotNullParameter(filterFab, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        switch (WhenMappings.$EnumSwitchMapping$0[filterFab.ordinal()]) {
            case 1:
                view.setImageResource(C3473R.C3475drawable.fab_compose_small);
                return;
            case 2:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_archive);
                return;
            case 3:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_cloud);
                return;
            case 4:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_mark_all_read);
                return;
            case 5:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_wallet);
                return;
            case 6:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_contacts);
                return;
            case 7:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_music);
                return;
            case 8:
                view.setImageResource(C3473R.C3475drawable.fork_mini_fab_albums);
                return;
            case 9:
                view.setImageResource(C3473R.C3475drawable.msg_add);
                return;
            case 10:
                view.setImageResource(C3473R.C3475drawable.msg_clear);
                return;
            case 11:
                view.setAnimation(C3473R.raw.write_contacts_fab_icon_camera, 44, 44);
                return;
            default:
                return;
        }
    }

    public static final String nameResId(FilterFab filterFab) {
        Intrinsics.checkNotNullParameter(filterFab, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[filterFab.ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_create_chat);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…settings_fab_create_chat)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_archive);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…fab_settings_fab_archive)");
                return internalString2;
            case 3:
                String internalString3 = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_cloud);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…r_fab_settings_fab_cloud)");
                return internalString3;
            case 4:
                String internalString4 = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_mark_all_read);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…ttings_fab_mark_all_read)");
                return internalString4;
            case 5:
                String internalString5 = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_wallet);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri…_fab_settings_fab_wallet)");
                return internalString5;
            case 6:
                String internalString6 = LocaleController.getInternalString(C3473R.string.folder_fab_settings_fab_contacts);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.stri…ab_settings_fab_contacts)");
                return internalString6;
            case 7:
                String internalString7 = LocaleController.getInternalString(C3473R.string.cloud_filter_music);
                Intrinsics.checkNotNullExpressionValue(internalString7, "getInternalString(R.string.cloud_filter_music)");
                return internalString7;
            case 8:
                String internalString8 = LocaleController.getInternalString(C3473R.string.music_albums_tab);
                Intrinsics.checkNotNullExpressionValue(internalString8, "getInternalString(R.string.music_albums_tab)");
                return internalString8;
            case 9:
                String internalString9 = LocaleController.getInternalString(C3473R.string.cloud_albums_intro_button);
                Intrinsics.checkNotNullExpressionValue(internalString9, "getInternalString(R.stri…loud_albums_intro_button)");
                return internalString9;
            case 10:
                String string = LocaleController.getString("AreYouSureClearDraftsTitle", C3473R.string.AreYouSureClearDraftsTitle);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\n        \"AreY…ureClearDraftsTitle\n    )");
                return string;
            case 11:
                String string2 = LocaleController.getString("Story", C3473R.string.Story);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Story\", R.string.Story)");
                return string2;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
