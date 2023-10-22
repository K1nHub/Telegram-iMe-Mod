package com.iMe.feature.profile;

import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.group.GroupMembersFilter;
import java.util.ArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_chatParticipantCreator;
/* compiled from: GroupMembershipUseCase.kt */
/* loaded from: classes3.dex */
public final class GroupMembershipUseCase {
    private final TelegramControllersGateway telegramControllersGateway;

    /* compiled from: GroupMembershipUseCase.kt */
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

    public GroupMembershipUseCase(TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.telegramControllersGateway = telegramControllersGateway;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.Collection, java.util.ArrayList] */
    public final ArrayList<TLRPC$ChatParticipant> filterMembers(ArrayList<TLRPC$ChatParticipant> allNotMegaGroupMembers, GroupMembersFilter membersFilter) {
        ArrayList<TLRPC$ChatParticipant> arrayList;
        Intrinsics.checkNotNullParameter(allNotMegaGroupMembers, "allNotMegaGroupMembers");
        Intrinsics.checkNotNullParameter(membersFilter, "membersFilter");
        MessagesController messagesController$default = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null);
        switch (WhenMappings.$EnumSwitchMapping$0[membersFilter.ordinal()]) {
            case 1:
                break;
            case 2:
                arrayList = new ArrayList<>();
                for (?? r0 : allNotMegaGroupMembers) {
                    TLRPC$ChatParticipant tLRPC$ChatParticipant = (TLRPC$ChatParticipant) r0;
                    if ((tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin) || (tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantCreator)) {
                        arrayList.add(r0);
                    }
                }
                allNotMegaGroupMembers = arrayList;
                break;
            case 3:
                arrayList = new ArrayList<>();
                for (Object obj : allNotMegaGroupMembers) {
                    if (messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj).user_id)).bot) {
                        arrayList.add(obj);
                    }
                }
                allNotMegaGroupMembers = arrayList;
                break;
            case 4:
                arrayList = new ArrayList<>();
                for (Object obj2 : allNotMegaGroupMembers) {
                    if (UserObject.isContact(messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj2).user_id)))) {
                        arrayList.add(obj2);
                    }
                }
                allNotMegaGroupMembers = arrayList;
                break;
            case 5:
                arrayList = new ArrayList<>();
                for (Object obj3 : allNotMegaGroupMembers) {
                    if (messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj3).user_id)).premium) {
                        arrayList.add(obj3);
                    }
                }
                allNotMegaGroupMembers = arrayList;
                break;
            case 6:
                allNotMegaGroupMembers = new ArrayList<>();
                break;
            case 7:
                allNotMegaGroupMembers = new ArrayList<>();
                break;
            case 8:
                arrayList = new ArrayList<>();
                for (Object obj4 : allNotMegaGroupMembers) {
                    if (UserObject.isDeleted(messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj4).user_id)))) {
                        arrayList.add(obj4);
                    }
                }
                allNotMegaGroupMembers = arrayList;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return CollectionsUtilsKt.toArrayList(allNotMegaGroupMembers);
    }
}
