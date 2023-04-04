package com.iMe.model.group;

import com.iMe.model.group.GroupMembersFilter;
import java.util.List;
import java.util.Objects;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.tgnet.TLRPC$ChannelParticipantsFilter;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsAdmins;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsBanned;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsBots;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsContacts;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsKicked;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import p035j$.util.Collection$EL;
import p035j$.util.function.Predicate;
/* compiled from: GroupMembersFilter.kt */
/* loaded from: classes3.dex */
public enum GroupMembersFilter {
    ALL(C3316R.string.profile_group_filter_all, C3316R.C3318drawable.msg_contacts, new TLRPC$TL_channelParticipantsRecent(), false),
    ADMINISTRATORS(C3316R.string.profile_group_filter_administrator, C3316R.C3318drawable.msg_admins, new TLRPC$TL_channelParticipantsAdmins(), false),
    BOTS(C3316R.string.profile_group_filter_bots, C3316R.C3318drawable.fork_filter_icon_bot, new TLRPC$TL_channelParticipantsBots(), false),
    CONTACTS(C3316R.string.profile_group_filter_contacts, C3316R.C3318drawable.msg_groups, new TLRPC$TL_channelParticipantsContacts(), false),
    RESTRICTED(C3316R.string.profile_group_filter_restricted, C3316R.C3318drawable.msg_permissions, new TLRPC$TL_channelParticipantsBanned(), false),
    BLOCKED(C3316R.string.profile_group_filter_blocked, C3316R.C3318drawable.msg_block, new TLRPC$TL_channelParticipantsKicked(), true),
    DELETED(C3316R.string.profile_group_filter_deleted, C3316R.C3318drawable.fork_ic_ghost_26, new TLRPC$TL_channelParticipantsRecent(), true);
    
    public static final Companion Companion = new Companion(null);
    public static GroupMembersFilter defaultValue;
    private final int icon;
    private final boolean needShowAction;
    private final TLRPC$ChannelParticipantsFilter serverFilter;
    private final int title;

    public static final List<GroupMembersFilter> getAvailableFilters(boolean z, boolean z2) {
        return Companion.getAvailableFilters(z, z2);
    }

    GroupMembersFilter(int i, int i2, TLRPC$ChannelParticipantsFilter tLRPC$ChannelParticipantsFilter, boolean z) {
        this.title = i;
        this.icon = i2;
        this.serverFilter = tLRPC$ChannelParticipantsFilter;
        this.needShowAction = z;
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getIcon() {
        return this.icon;
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

    /* compiled from: GroupMembersFilter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<GroupMembersFilter> getAvailableFilters(boolean z, boolean z2) {
            List<GroupMembersFilter> mutableList;
            mutableList = ArraysKt___ArraysKt.toMutableList(GroupMembersFilter.values());
            final GroupMembersFilter$Companion$getAvailableFilters$1$1 groupMembersFilter$Companion$getAvailableFilters$1$1 = new GroupMembersFilter$Companion$getAvailableFilters$1$1(z, z2);
            Collection$EL.removeIf(mutableList, new Predicate() { // from class: com.iMe.model.group.GroupMembersFilter$Companion$$ExternalSyntheticLambda0
                @Override // p035j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Objects.requireNonNull(predicate);
                }

                @Override // p035j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // p035j$.util.function.Predicate
                /* renamed from: or */
                public /* synthetic */ Predicate mo21or(Predicate predicate) {
                    return Objects.requireNonNull(predicate);
                }

                @Override // p035j$.util.function.Predicate
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
