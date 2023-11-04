package com.iMe.model.group;

import com.iMe.model.group.GroupMembersFilter;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$ChannelParticipantsFilter;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsAdmins;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsBanned;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsBots;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsContacts;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsKicked;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import p033j$.util.Collection;
import p033j$.util.function.Predicate;
/* compiled from: GroupMembersFilter.kt */
/* loaded from: classes3.dex */
public enum GroupMembersFilter {
    ALL(new TLRPC$TL_channelParticipantsRecent(), false),
    ADMINISTRATORS(new TLRPC$TL_channelParticipantsAdmins(), false),
    BOTS(new TLRPC$TL_channelParticipantsBots(), false),
    CONTACTS(new TLRPC$TL_channelParticipantsContacts(), false),
    PREMIUM(new TLRPC$TL_channelParticipantsRecent(), false),
    RESTRICTED(new TLRPC$TL_channelParticipantsBanned(), false),
    BLOCKED(new TLRPC$TL_channelParticipantsKicked(), true),
    DELETED(new TLRPC$TL_channelParticipantsRecent(), true);
    
    public static final Companion Companion = new Companion(null);
    public static GroupMembersFilter defaultValue;
    private final boolean needShowAction;
    private final TLRPC$ChannelParticipantsFilter serverFilter;

    /* compiled from: GroupMembersFilter.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GroupMembersFilter.values().length];
            try {
                iArr[GroupMembersFilter.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GroupMembersFilter.ADMINISTRATORS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GroupMembersFilter.BOTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GroupMembersFilter.CONTACTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GroupMembersFilter.PREMIUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GroupMembersFilter.RESTRICTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GroupMembersFilter.BLOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[GroupMembersFilter.DELETED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final List<GroupMembersFilter> getAvailableFilters(boolean z, boolean z2) {
        return Companion.getAvailableFilters(z, z2);
    }

    GroupMembersFilter(TLRPC$ChannelParticipantsFilter tLRPC$ChannelParticipantsFilter, boolean z) {
        this.serverFilter = tLRPC$ChannelParticipantsFilter;
        this.needShowAction = z;
    }

    public final TLRPC$ChannelParticipantsFilter getServerFilter() {
        return this.serverFilter;
    }

    public final boolean getNeedShowAction() {
        return this.needShowAction;
    }

    static {
        GroupMembersFilter groupMembersFilter;
        defaultValue = groupMembersFilter;
    }

    public final boolean isDefault() {
        return this == defaultValue;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3634R.string.profile_group_filter_all);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…profile_group_filter_all)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3634R.string.profile_group_filter_administrator);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…oup_filter_administrator)");
                return internalString2;
            case 3:
                String internalString3 = LocaleController.getInternalString(C3634R.string.profile_group_filter_bots);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…rofile_group_filter_bots)");
                return internalString3;
            case 4:
                String internalString4 = LocaleController.getInternalString(C3634R.string.profile_group_filter_contacts);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…le_group_filter_contacts)");
                return internalString4;
            case 5:
                String string = LocaleController.getString("LimitPremium", C3634R.string.LimitPremium);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"LimitPremium\", R.string.LimitPremium)");
                return string;
            case 6:
                String internalString5 = LocaleController.getInternalString(C3634R.string.profile_group_filter_restricted);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri…_group_filter_restricted)");
                return internalString5;
            case 7:
                String internalString6 = LocaleController.getInternalString(C3634R.string.profile_group_filter_blocked);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.stri…ile_group_filter_blocked)");
                return internalString6;
            case 8:
                String internalString7 = LocaleController.getInternalString(C3634R.string.profile_group_filter_deleted);
                Intrinsics.checkNotNullExpressionValue(internalString7, "getInternalString(R.stri…ile_group_filter_deleted)");
                return internalString7;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: GroupMembersFilter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<GroupMembersFilter> getAvailableFilters(final boolean z, final boolean z2) {
            List<GroupMembersFilter> mutableList;
            mutableList = ArraysKt___ArraysKt.toMutableList(GroupMembersFilter.values());
            final Function1<GroupMembersFilter, Boolean> function1 = new Function1<GroupMembersFilter, Boolean>() { // from class: com.iMe.model.group.GroupMembersFilter$Companion$getAvailableFilters$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(GroupMembersFilter it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf((it == GroupMembersFilter.BLOCKED || it == GroupMembersFilter.RESTRICTED) && !(z && z2));
                }
            };
            Collection.EL.removeIf(mutableList, new Predicate() { // from class: com.iMe.model.group.GroupMembersFilter$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate.CC.$default$and(this, predicate);
                }

                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // p033j$.util.function.Predicate
                /* renamed from: or */
                public /* synthetic */ Predicate mo53or(Predicate predicate) {
                    return Predicate.CC.$default$or(this, predicate);
                }

                @Override // p033j$.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean availableFilters$lambda$1$lambda$0;
                    availableFilters$lambda$1$lambda$0 = GroupMembersFilter.Companion.getAvailableFilters$lambda$1$lambda$0(Function1.this, obj);
                    return availableFilters$lambda$1$lambda$0;
                }
            });
            return mutableList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean getAvailableFilters$lambda$1$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }
    }
}
