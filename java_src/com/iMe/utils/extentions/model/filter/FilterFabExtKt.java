package com.iMe.utils.extentions.model.filter;

import com.iMe.storage.domain.model.filters.FilterFab;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: FilterFabExt.kt */
/* loaded from: classes4.dex */
public final class FilterFabExtKt {

    /* compiled from: FilterFabExt.kt */
    /* loaded from: classes4.dex */
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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int iconResId(FilterFab filterFab, boolean z) {
        Intrinsics.checkNotNullParameter(filterFab, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[filterFab.ordinal()]) {
            case 1:
                return z ? C3242R.C3244drawable.fork_fab_create_chat : C3242R.C3244drawable.fork_mini_fab_create_chat;
            case 2:
                return z ? C3242R.C3244drawable.fork_fab_archive : C3242R.C3244drawable.fork_mini_fab_archive;
            case 3:
                return z ? C3242R.C3244drawable.fork_fab_cloud : C3242R.C3244drawable.fork_mini_fab_cloud;
            case 4:
                return z ? C3242R.C3244drawable.fork_fab_mark_all_read : C3242R.C3244drawable.fork_mini_fab_mark_all_read;
            case 5:
                return z ? C3242R.C3244drawable.fork_fab_wallet : C3242R.C3244drawable.fork_mini_fab_wallet;
            case 6:
                return z ? C3242R.C3244drawable.fork_fab_contacts : C3242R.C3244drawable.fork_mini_fab_contacts;
            case 7:
                return z ? C3242R.C3244drawable.fork_fab_music : C3242R.C3244drawable.fork_mini_fab_music;
            case 8:
                return z ? C3242R.C3244drawable.fork_fab_albums : C3242R.C3244drawable.fork_mini_fab_albums;
            case 9:
                return C3242R.C3244drawable.fork_plus;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final int nameResId(FilterFab filterFab) {
        Intrinsics.checkNotNullParameter(filterFab, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[filterFab.ordinal()]) {
            case 1:
                return C3242R.string.folder_fab_settings_fab_create_chat;
            case 2:
                return C3242R.string.folder_fab_settings_fab_archive;
            case 3:
                return C3242R.string.folder_fab_settings_fab_cloud;
            case 4:
                return C3242R.string.folder_fab_settings_fab_mark_all_read;
            case 5:
                return C3242R.string.folder_fab_settings_fab_wallet;
            case 6:
                return C3242R.string.folder_fab_settings_fab_contacts;
            case 7:
                return C3242R.string.cloud_filter_music;
            case 8:
                return C3242R.string.music_albums_tab;
            case 9:
                return C3242R.string.cloud_albums_intro_button;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
