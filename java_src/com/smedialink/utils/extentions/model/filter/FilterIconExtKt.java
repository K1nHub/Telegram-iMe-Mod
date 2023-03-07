package com.smedialink.utils.extentions.model.filter;

import com.smedialink.p031ui.folder.FilterIconInfo;
import com.smedialink.storage.domain.model.filters.FilterIcon;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: FilterIconExt.kt */
/* loaded from: classes3.dex */
public final class FilterIconExtKt {

    /* compiled from: FilterIconExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FilterIcon.values().length];
            iArr[FilterIcon.GRID_2x2.ordinal()] = 1;
            iArr[FilterIcon.EYE.ordinal()] = 2;
            iArr[FilterIcon.USER.ordinal()] = 3;
            iArr[FilterIcon.USERS.ordinal()] = 4;
            iArr[FilterIcon.CHANNEL.ordinal()] = 5;
            iArr[FilterIcon.BOT.ordinal()] = 6;
            iArr[FilterIcon.LOCK.ordinal()] = 7;
            iArr[FilterIcon.CLOUD.ordinal()] = 8;
            iArr[FilterIcon.CROWN.ordinal()] = 9;
            iArr[FilterIcon.BEAR.ordinal()] = 10;
            iArr[FilterIcon.SUITCASE.ordinal()] = 11;
            iArr[FilterIcon.BELL.ordinal()] = 12;
            iArr[FilterIcon.WINEGLASS.ordinal()] = 13;
            iArr[FilterIcon.COMPUTER.ordinal()] = 14;
            iArr[FilterIcon.HOME.ordinal()] = 15;
            iArr[FilterIcon.HEART.ordinal()] = 16;
            iArr[FilterIcon.PLANE.ordinal()] = 17;
            iArr[FilterIcon.FLOWER.ordinal()] = 18;
            iArr[FilterIcon.GRID_3x3.ordinal()] = 19;
            iArr[FilterIcon.STAR.ordinal()] = 20;
            iArr[FilterIcon.BUBBLES.ordinal()] = 21;
            iArr[FilterIcon.BUBBLE.ordinal()] = 22;
            iArr[FilterIcon.BUBBLE_POINT.ordinal()] = 23;
            iArr[FilterIcon.CHART.ordinal()] = 24;
            iArr[FilterIcon.MICRO.ordinal()] = 25;
            iArr[FilterIcon.HEADSET.ordinal()] = 26;
            iArr[FilterIcon.CALL.ordinal()] = 27;
            iArr[FilterIcon.GLOBE.ordinal()] = 28;
            iArr[FilterIcon.FOLDER.ordinal()] = 29;
            iArr[FilterIcon.GALLERY.ordinal()] = 30;
            iArr[FilterIcon.CAMERA.ordinal()] = 31;
            iArr[FilterIcon.MASK.ordinal()] = 32;
            iArr[FilterIcon.BALL.ordinal()] = 33;
            iArr[FilterIcon.GEAR.ordinal()] = 34;
            iArr[FilterIcon.GAME.ordinal()] = 35;
            iArr[FilterIcon.TELEPHONE.ordinal()] = 36;
            iArr[FilterIcon.FLITTERMOUSE.ordinal()] = 37;
            iArr[FilterIcon.PUMPKIN.ordinal()] = 38;
            iArr[FilterIcon.SECURITY.ordinal()] = 39;
            iArr[FilterIcon.FAVORITES.ordinal()] = 40;
            iArr[FilterIcon.GIFT.ordinal()] = 41;
            iArr[FilterIcon.SUPPORT.ordinal()] = 42;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final FilterIconInfo iconInfo(FilterIcon filterIcon) {
        Intrinsics.checkNotNullParameter(filterIcon, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[filterIcon.ordinal()]) {
            case 1:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_grid_2x2, C3158R.C3160drawable.fork_filter_icon_grid_2x2_filled);
            case 2:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_eye, C3158R.C3160drawable.fork_filter_icon_eye_filled);
            case 3:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_user, C3158R.C3160drawable.fork_filter_icon_user_filled);
            case 4:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_users, C3158R.C3160drawable.fork_filter_icon_users_filled);
            case 5:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_channel, C3158R.C3160drawable.fork_filter_icon_channel_filled);
            case 6:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bot, C3158R.C3160drawable.fork_filter_icon_bot_filled);
            case 7:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_lock, C3158R.C3160drawable.fork_filter_icon_lock_filled);
            case 8:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_cloud, C3158R.C3160drawable.fork_filter_icon_cloud_filled);
            case 9:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_crown, C3158R.C3160drawable.fork_filter_icon_crown_filled);
            case 10:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bear, C3158R.C3160drawable.fork_filter_icon_bear_filled);
            case 11:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_suitcase, C3158R.C3160drawable.fork_filter_icon_suitcase_filled);
            case 12:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bell, C3158R.C3160drawable.fork_filter_icon_bell_filled);
            case 13:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_wineglass, C3158R.C3160drawable.fork_filter_icon_wineglass_filled);
            case 14:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_computer, C3158R.C3160drawable.fork_filter_icon_computer_filled);
            case 15:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_home, C3158R.C3160drawable.fork_filter_icon_home_filled);
            case 16:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_heart, C3158R.C3160drawable.fork_filter_icon_heart_filled);
            case 17:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_plane, C3158R.C3160drawable.fork_filter_icon_plane_filled);
            case 18:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_flower, C3158R.C3160drawable.fork_filter_icon_flower_filled);
            case 19:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_grid_3x3, C3158R.C3160drawable.fork_filter_icon_grid_3x3_filled);
            case 20:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_star, C3158R.C3160drawable.fork_filter_icon_star_filled);
            case 21:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bubbles, C3158R.C3160drawable.fork_filter_icon_bubbles_filled);
            case 22:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bubble, C3158R.C3160drawable.fork_filter_icon_bubble_filled);
            case 23:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_bubble_point, C3158R.C3160drawable.fork_filter_icon_bubble_point_filled);
            case 24:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_chart, C3158R.C3160drawable.fork_filter_icon_chart_filled);
            case 25:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_micro, C3158R.C3160drawable.fork_filter_icon_micro_filled);
            case 26:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_headset, C3158R.C3160drawable.fork_filter_icon_headset_filled);
            case 27:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_call, C3158R.C3160drawable.fork_filter_icon_call_filled);
            case 28:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_globe, C3158R.C3160drawable.fork_filter_icon_globe_filled);
            case 29:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_folder, C3158R.C3160drawable.fork_filter_icon_folder_filled);
            case 30:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_gallery, C3158R.C3160drawable.fork_filter_icon_gallery_filled);
            case 31:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_camera, C3158R.C3160drawable.fork_filter_icon_camera_filled);
            case 32:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_mask, C3158R.C3160drawable.fork_filter_icon_mask_filled);
            case 33:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_ball, C3158R.C3160drawable.fork_filter_icon_ball_filled);
            case 34:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_gear, C3158R.C3160drawable.fork_filter_icon_gear_filled);
            case 35:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_game, C3158R.C3160drawable.fork_filter_icon_game_filled);
            case 36:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_telephone, C3158R.C3160drawable.fork_filter_icon_telephone_filled);
            case 37:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_flittermouse, C3158R.C3160drawable.fork_filter_icon_flittermouse_filled);
            case 38:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_pumpkin, C3158R.C3160drawable.fork_filter_icon_pumpkin_filled);
            case 39:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_security, C3158R.C3160drawable.fork_filter_icon_security_filled);
            case 40:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_favorites, C3158R.C3160drawable.fork_filter_icon_favorites_filled);
            case 41:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_gift, C3158R.C3160drawable.fork_filter_icon_gift_filled);
            case 42:
                return new FilterIconInfo(C3158R.C3160drawable.fork_filter_icon_support, C3158R.C3160drawable.fork_filter_icon_support_filled);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
