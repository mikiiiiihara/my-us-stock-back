import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { CreateTickerInput } from './dto/input/create-ticker.input';
import { UpdateTickerInput } from './dto/input/update-ticker.input';
import { Ticker } from './dto/types/ticker.type';
import { TickerService } from './ticker.service';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '@/common/auth/guards/jwt-auth.guard';

@UseGuards(JwtAuthGuard)
@Resolver(() => Ticker)
// @UseGuards(AccessTokenGuard)
export class TickerResolver {
  constructor(private readonly tickerService: TickerService) {}

  @Query(() => [Ticker], { nullable: true })
  async getTickers(@Args('email') email: string) {
    return this.tickerService.fetchTickerList(email);
  }
  @Mutation(() => Ticker)
  async createTicker(@Args('input') createTickerInput: CreateTickerInput) {
    return this.tickerService.createTicker(createTickerInput);
  }

  @Mutation(() => Ticker)
  async updateTicker(@Args('input') updateTickerInput: UpdateTickerInput) {
    return this.tickerService.updateTicker(updateTickerInput);
  }
  @Mutation(() => Ticker)
  async deleteTicker(@Args('input') updateTickerInput: UpdateTickerInput) {
    return this.tickerService.deleteTicker(updateTickerInput);
  }
}
