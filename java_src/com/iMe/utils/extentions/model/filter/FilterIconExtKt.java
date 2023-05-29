package com.iMe.utils.extentions.model.filter;

import com.iMe.p031ui.folder.FilterIconInfo;
import com.iMe.storage.domain.model.filters.FilterIcon;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: FilterIconExt.kt */
/* loaded from: classes4.dex */
public final class FilterIconExtKt {

    /* compiled from: FilterIconExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FilterIcon.values().length];
            try {
                iArr[FilterIcon.GRID_2x2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FilterIcon.EYE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FilterIcon.USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FilterIcon.USERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FilterIcon.CHANNEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FilterIcon.BOT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FilterIcon.LOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FilterIcon.CLOUD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FilterIcon.CROWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[FilterIcon.BEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[FilterIcon.SUITCASE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[FilterIcon.BELL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[FilterIcon.WINEGLASS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[FilterIcon.COMPUTER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[FilterIcon.HOME.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[FilterIcon.HEART.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[FilterIcon.PLANE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[FilterIcon.FLOWER.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[FilterIcon.GRID_3x3.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[FilterIcon.STAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[FilterIcon.BUBBLES.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[FilterIcon.BUBBLE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[FilterIcon.BUBBLE_POINT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[FilterIcon.CHART.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[FilterIcon.MICRO.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[FilterIcon.HEADSET.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[FilterIcon.CALL.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[FilterIcon.GLOBE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[FilterIcon.FOLDER.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[FilterIcon.GALLERY.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[FilterIcon.CAMERA.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[FilterIcon.MASK.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[FilterIcon.BALL.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[FilterIcon.GEAR.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[FilterIcon.GAME.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[FilterIcon.TELEPHONE.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[FilterIcon.FLITTERMOUSE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[FilterIcon.PUMPKIN.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[FilterIcon.SECURITY.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[FilterIcon.FAVORITES.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[FilterIcon.GIFT.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[FilterIcon.SUPPORT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final FilterIconInfo iconInfo(FilterIcon filterIcon) {
        Intrinsics.checkNotNullParameter(filterIcon, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[filterIcon.ordinal()]) {
            case 1:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_grid_2x2, C3295R.C3297drawable.fork_filter_icon_grid_2x2_filled);
            case 2:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_eye, C3295R.C3297drawable.fork_filter_icon_eye_filled);
            case 3:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_user, C3295R.C3297drawable.fork_filter_icon_user_filled);
            case 4:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_users, C3295R.C3297drawable.fork_filter_icon_users_filled);
            case 5:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_channel, C3295R.C3297drawable.fork_filter_icon_channel_filled);
            case 6:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bot, C3295R.C3297drawable.fork_filter_icon_bot_filled);
            case 7:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_lock, C3295R.C3297drawable.fork_filter_icon_lock_filled);
            case 8:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_cloud, C3295R.C3297drawable.fork_filter_icon_cloud_filled);
            case 9:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_crown, C3295R.C3297drawable.fork_filter_icon_crown_filled);
            case 10:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bear, C3295R.C3297drawable.fork_filter_icon_bear_filled);
            case 11:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_suitcase, C3295R.C3297drawable.fork_filter_icon_suitcase_filled);
            case 12:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bell, C3295R.C3297drawable.fork_filter_icon_bell_filled);
            case 13:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_wineglass, C3295R.C3297drawable.fork_filter_icon_wineglass_filled);
            case 14:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_computer, C3295R.C3297drawable.fork_filter_icon_computer_filled);
            case 15:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_home, C3295R.C3297drawable.fork_filter_icon_home_filled);
            case 16:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_heart, C3295R.C3297drawable.fork_filter_icon_heart_filled);
            case 17:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_plane, C3295R.C3297drawable.fork_filter_icon_plane_filled);
            case 18:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_flower, C3295R.C3297drawable.fork_filter_icon_flower_filled);
            case 19:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_grid_3x3, C3295R.C3297drawable.fork_filter_icon_grid_3x3_filled);
            case 20:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_star, C3295R.C3297drawable.fork_filter_icon_star_filled);
            case 21:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bubbles, C3295R.C3297drawable.fork_filter_icon_bubbles_filled);
            case 22:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bubble, C3295R.C3297drawable.fork_filter_icon_bubble_filled);
            case 23:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_bubble_point, C3295R.C3297drawable.fork_filter_icon_bubble_point_filled);
            case 24:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_chart, C3295R.C3297drawable.fork_filter_icon_chart_filled);
            case 25:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_micro, C3295R.C3297drawable.fork_filter_icon_micro_filled);
            case 26:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_headset, C3295R.C3297drawable.fork_filter_icon_headset_filled);
            case 27:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_call, C3295R.C3297drawable.fork_filter_icon_call_filled);
            case 28:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_globe, C3295R.C3297drawable.fork_filter_icon_globe_filled);
            case 29:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_folder, C3295R.C3297drawable.fork_filter_icon_folder_filled);
            case 30:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_gallery, C3295R.C3297drawable.fork_filter_icon_gallery_filled);
            case 31:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_camera, C3295R.C3297drawable.fork_filter_icon_camera_filled);
            case 32:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_mask, C3295R.C3297drawable.fork_filter_icon_mask_filled);
            case 33:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_ball, C3295R.C3297drawable.fork_filter_icon_ball_filled);
            case 34:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_gear, C3295R.C3297drawable.fork_filter_icon_gear_filled);
            case 35:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_game, C3295R.C3297drawable.fork_filter_icon_game_filled);
            case 36:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_telephone, C3295R.C3297drawable.fork_filter_icon_telephone_filled);
            case 37:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_flittermouse, C3295R.C3297drawable.fork_filter_icon_flittermouse_filled);
            case 38:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_pumpkin, C3295R.C3297drawable.fork_filter_icon_pumpkin_filled);
            case 39:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_security, C3295R.C3297drawable.fork_filter_icon_security_filled);
            case 40:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_favorites, C3295R.C3297drawable.fork_filter_icon_favorites_filled);
            case 41:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_gift, C3295R.C3297drawable.fork_filter_icon_gift_filled);
            case 42:
                return new FilterIconInfo(C3295R.C3297drawable.fork_filter_icon_support, C3295R.C3297drawable.fork_filter_icon_support_filled);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
