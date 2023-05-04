import { Module } from '@nestjs/common';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { GetTotalModule } from './get-total/get-total.module';

@Module({
  imports: [AuthModule, UsersModule, GetTotalModule],
})
export class CommonModule {}
